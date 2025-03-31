
module "SWSV_Cloudbuild" {
  source                            = "../../gcp/secretsManager/_SWSV_secretWithSecretVersion"
  gcpProjectId                      = var.gcpProjectId
  gcpRegion                         = var.gcpRegion
  SWSV_SecretReplicationAuto        = var.CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto
  SWSV_SecretReplicationUserManaged = var.CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged
  resourceName                      = var.resourceName
  projectName                       = var.projectName
  deployedDate                      = var.deployedDate
  createdBy                         = var.createdBy
  tfModule                          = var.tfModule
  additionalTags                    = var.additionalTags
  SWSV_SecretAnnotations            = var.CRDPFG_SWSV_Cloudbuild_SecretAnnotations
  SWSV_SecretVersionAliases         = var.CRDPFG_SWSV_Cloudbuild_SecretVersionAliases
  SWSV_SecretVersionDestroyTtl      = var.CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl
  SWSV_SecretTopics                 = var.CRDPFG_SWSV_Cloudbuild_SecretTopics
  SWSV_SecretExpireTime             = var.CRDPFG_SWSV_Cloudbuild_SecretExpireTime
  SWSV_SecretTtl                    = var.CRDPFG_SWSV_Cloudbuild_SecretTtl
  SWSV_SecretRotation               = var.CRDPFG_SWSV_Cloudbuild_SecretRotation
  SWSV_SecretVersionObjects         = var.CRDPFG_SWSV_Cloudbuild_SecretVersionObjects
}

#---

module "cloudbuildTrigger" {
  source                                  = "../../gcp/cloudBuild/githubRepoPushCloudbuildTrigger"
  gcpProjectId                            = var.gcpProjectId
  gcpRegion                               = var.gcpRegion
  resourceName                            = var.resourceName
  serviceAccountAccountId                 = "${var.resourceName}-prod"
  serviceAccountDisabled                  = var.CRDPFG_ServiceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.CRDPFG_ServiceAccountCreateIgnoreAlreadyExists
  serviceAccountRoleId                    = var.CRDPFG_ServiceAccountRoleId
  serviceAccountRoleStage                 = var.CRDPFG_ServiceAccountRoleStage
  cloudBuildTriggerYamlPath               = var.CRDPFG_CloudBuildTriggerYamlPath
  cloudBuildTriggerGithubRepoName         = var.CRDPFG_CloudBuildTriggerGithubRepoName
  cloudBuildTriggerBranchName             = var.CRDPFG_CloudBuildTriggerBranchName
  cloudBuildTriggerArtifactRepoName       = var.CRDPFG_CloudBuildTriggerArtifactRepoName
  cloudBuildTriggerBucketName             = var.CRDPFG_CloudBuildTriggerBucketName
  cloudBuildTriggerAdditionalSubstitutions = merge({
    _CONCURRENT_REQUESTS = var.CRDPFG_CloudRunConcurrentRequests
    _REQUESTS_TIMEOUT    = "${var.CRDPFG_CloudRunRequestsTimeout}s"
    _PORT_NUMBER         = var.CRDPFG_CloudRunPortNumber
    _MIN_INSTANCES       = var.CRDPFG_CloudRunMinInstances
    _MAX_INSTANCES       = var.CRDPFG_CloudRunMaxInstances
    _VPC_CONNECTOR       = var.CRDPFG_CloudRunVpcConnector
    _G_UNICORN_WORKERS   = var.CRDPFG_CloudRunNumberOfVcpus * 2 + 1
    _G_UNICORN_TIMEOUT   = var.CRDPFG_CloudRunRequestsTimeout
    _AMOUNT_OF_MEMORY    = "${var.CRDPFG_CloudRunAmountOfMemory}Gi"
    _NUMBER_OF_VCPU      = var.CRDPFG_CloudRunNumberOfVcpus
    _ENV_VARIABLE_NAME   = var.CRDPFG_CloudRunEnvVariableName
    _SECRET_NAME         = module.SWSV_Cloudbuild.SWSV_SecretName
  }, var.CRDPFG_CloudBuildTriggerAdditionalSubstitutions)
}

#---

module "cloudRunAlertPolicy" {
  source                                   = "../../gcp/cloudMonitoring/cloudRunError"
  resourceName                             = var.resourceName
  gcpProjectId                             = var.gcpProjectId
  cloudRunAlertPolicyNotificationRateLimit = var.CRDPFG_CloudRunAlertPolicyNotificationRateLimit
  cloudRunAlertPolicyAutoClose             = var.CRDPFG_CloudRunAlertPolicyAutoClose
  cloudRunAlertPolicyNotificationChannelId = var.CRDPFG_CloudRunAlertPolicyNotificationChannelId
}

#---

module "cloudRunMemAlertPolicy" {
  source              = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
  gcpProjectId        = var.gcpProjectId
  gcpRegion           = var.gcpRegion
  resourceName        = "${var.resourceName}-cloud-run-mem"
  alertPolicyCombiner = "OR" #var.CRDPFG_CloudRunMemAlertPolicyCombiner
  alertPolicyConditions = {
    condition_monitoring_query_language = {
      duration = "300s"
      trigger = {
        percent = var.CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
      }
      query = <<EOT
fetch cloud_run_revision
| metric 'run.googleapis.com/container/memory/utilizations'
| filter (resource.service_name == '${var.resourceName}')
| group_by 5m,
    [value_utilizations_percentile: percentile(value.utilizations, 99)]
| every 5m
| condition val() > .${var.CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent}
EOT
    }
    display_name = "${var.resourceName} - High Mem Utilization in Cloud Run Service"
  }
  alertPolicyEnabled              = var.CRDPFG_CloudRunMemAlertPolicyEnabled
  alertPolicyNotificationChannels = var.CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  alertPolicyAlertStrategy        = var.CRDPFG_CloudRunMemAlertPolicyAlertStrategy
  projectName                     = var.projectName
  deployedDate                    = var.deployedDate
  createdBy                       = var.createdBy
  tfModule                        = var.tfModule
  additionalTags                  = var.additionalTags
  alertPolicySeverity             = var.CRDPFG_CloudRunMemAlertPolicySeverity
  alertPolicyDocumentation        = var.CRDPFG_CloudRunMemAlertPolicyDocumentation
}

#---

module "cloudRunCpuAlertPolicy" {
  source              = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
  gcpProjectId        = var.gcpProjectId
  gcpRegion           = var.gcpRegion
  resourceName        = "${var.resourceName}-cloud-run-cpu"
  alertPolicyCombiner = "OR"
  alertPolicyConditions = {
    condition_monitoring_query_language = {
      duration = "300s"
      trigger = {
        percent = var.CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
      }
      query = <<EOT
fetch cloud_run_revision
| metric 'run.googleapis.com/container/memory/utilizations'
| filter (resource.service_name == '${var.resourceName}')
| group_by 5m,
    [value_utilizations_percentile: percentile(value.utilizations, 99)]
| every 5m
| condition val() > .${var.CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent}
EOT
    }
    display_name = "${var.resourceName} - High Cpu Utilization in Cloud Run Service"
  }
  alertPolicyEnabled              = var.CRDPFG_CloudRunCpuAlertPolicyEnabled
  alertPolicyNotificationChannels = var.CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  alertPolicyAlertStrategy        = var.CRDPFG_CloudRunCpuAlertPolicyAlertStrategy
  projectName                     = var.projectName
  deployedDate                    = var.deployedDate
  createdBy                       = var.createdBy
  tfModule                        = var.tfModule
  additionalTags                  = var.additionalTags
  alertPolicySeverity             = var.CRDPFG_CloudRunCpuAlertPolicySeverity
  alertPolicyDocumentation        = var.CRDPFG_CloudRunCpuAlertPolicyDocumentation
}

#---