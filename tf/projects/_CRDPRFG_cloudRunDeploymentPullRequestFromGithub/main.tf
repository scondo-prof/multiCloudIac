provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

module "secretWithSecretVersion" {
  source = "../../gcp/secretsManager/secretWithSecretVersion"

  projectId                   = var.gcpProjectId
  gcpRegion                   = var.gcpRegion
  resourceName                = var.resourceName
  projectName                 = var.projectName
  deployedDate                = var.deployedDate
  createdBy                   = var.createdBy
  secretVersionSecretData     = var.CRDPRFG_SecretVersionSecretData
  secretVersionEnabled        = var.CRDPRFG_SecretVersionEnabled
  secretVersionDeletionPolicy = var.CRDPRFG_SecretVersionDeletionPolicy
}

module "cloudBuildTrigger" {
  source = "../../gcp/cloudBuild/githubRepoPullRequestCloudbuildTrigger"

  resourceName                            = var.resourceName
  gcpRegion                               = var.gcpRegion
  serviceAccountAccountId                 = "${var.resourceName}-dev"
  serviceAccountDisabled                  = var.CRDPRFG_CloudBuildTriggerServiceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  serviceAccountRoleId                    = var.CRDPRFG_CloudBuildTriggerRoleId
  serviceAccountRoleStage                 = var.CRDPRFG_CloudBuildTriggerRoleStage
  cloudBuildTriggerYamlPath               = var.CRDPRFG_CloudBuildTriggerYamlPath
  cloudBuildTriggerGithubRepoName         = var.CRDPRFG_CloudBuildTriggerGithubRepoName
  cloudBuildTriggerBranchName             = var.CRDPRFG_CloudBuildTriggerBranchName
  cloudBuildTriggerArtifactRepoName       = var.CRDPRFG_CloudBuildTriggerArtifactRepoName
  projectId                               = var.gcpProjectId
  cloudBuildTriggerBucketName             = var.CRDPRFG_CloudBuildTriggerBucketName
  cloudBuildTriggerAdditionalSubstitutions = merge({
    _CONCURRENT_REQUESTS = var.CRDPRFG_CloudRunConcurrentRequests
    _REQUESTS_TIMEOUT = "${var.CRDPRFG_CloudRunRequestsTimeout}s"
    _PORT_NUMBER = var.CRDPRFG_CloudRunPortNumber
    _MIN_INSTANCES = var.CRDPRFG_CloudRunMinInstances
    _MAX_INSTANCES = var.CRDPRFG_CloudRunMaxInstances
    _VPC_CONNECTOR     = var.CRDPRFG_CloudRunVpcConnector
    _G_UNICORN_WORKERS = var.CRDPRFG_CloudRunNumberOfVcpus * 2 + 1
    _G_UNICORN_TIMEOUT = var.CRDPRFG_CloudRunRequestsTimeout
    _AMOUNT_OF_MEMORY = "${var.CRDPRFG_CloudRunAmountOfMemory}Gi"
    _NUMBER_OF_VCPU = var.CRDPRFG_CloudRunNumberOfVcpus
    _ENV_VARIABLE_NAME = var.CRDPRFG_CloudRunEnvVariableName
    _SECRET_NAME       = module.secretWithSecretVersion.secretName
  }, var.CRDPRFG_CloudBuildTriggerAdditionalSubstitutions)
}

module "cloudRunAlertPolicy" {
  source = "../../gcp/cloudMonitoring/cloudRunError"

  resourceName                             = var.resourceName
  projectId                                = var.gcpProjectId
  cloudRunAlertPolicyNotificationChannelId = var.CRDPRFG_CloudRunAlertPolicyNotificationChannelId
  cloudRunAlertPolicyNotificationRateLimit = var.CRDPRFG_CloudRunAlertPolicyNotificationRateLimit
  cloudRunAlertPolicyAutoClose             = var.CRDPRFG_CloudRunAlertPolicyAutoClose
}

module "cloudRunMemAlertPolicy" {
  source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"

  gcpProjectId        = var.gcpProjectId
  gcpRegion           = var.gcpRegion
  resourceName        = "${var.resourceName}-cloud-run-mem"
  alertPolicyCombiner = "OR"
  alertPolicyConditions = {
    condition_monitoring_query_language = {
      duration = "300s"
      trigger = {
        percent = var.CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
      }
      query = <<EOT
fetch cloud_run_revision
| metric 'run.googleapis.com/container/memory/utilizations'
| filter (resource.service_name == '${var.resourceName}')
| group_by 5m,
    [value_utilizations_percentile: percentile(value.utilizations, 99)]
| every 5m
| condition val() > .${var.CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent}
EOT
    }
    display_name = "${var.resourceName} - High Mem Utilization in Cloud Run Service"
  }
  alertPolicyEnabled              = true
  alertPolicyNotificationChannels = var.CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels
  createdBy                       = var.createdBy
  deployedDate                    = var.deployedDate
  projectName                     = var.projectName
  additionalAlertPolicyUserLabels = var.additionalLabels
  alertPolicySeverity             = "WARNING"
}

module "cloudRunCpuAlertPolicy" {
  source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"

  gcpProjectId        = var.gcpProjectId
  gcpRegion           = var.gcpRegion
  resourceName        = "${var.resourceName}-cloud-run-cpu"
  alertPolicyCombiner = "OR"
  alertPolicyConditions = {
    condition_monitoring_query_language = {
      duration = "300s"
      trigger = {
        percent = var.CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
      }
      query = <<EOT
fetch cloud_run_revision
| metric 'run.googleapis.com/container/memory/utilizations'
| filter (resource.service_name == '${var.resourceName}')
| group_by 5m,
    [value_utilizations_percentile: percentile(value.utilizations, 99)]
| every 5m
| condition val() > .${var.CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent}
EOT
    }
    display_name = "${var.resourceName} - High Cpu Utilization in Cloud Run Service"
  }
  alertPolicyEnabled              = true
  alertPolicyNotificationChannels = var.CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels
  createdBy                       = var.createdBy
  deployedDate                    = var.deployedDate
  projectName                     = var.projectName
  additionalAlertPolicyUserLabels = var.additionalLabels
  alertPolicySeverity             = "WARNING"
}