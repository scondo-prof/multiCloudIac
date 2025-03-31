
module "SWSV" {
  source                            = "../../gcp/secretsManager/_SWSV_secretWithSecretVersion"
  gcpProjectId                      = var.gcpProjectId
  gcpRegion                         = var.gcpRegion
  SWSV_SecretReplicationAuto        = var.CRDPRFG_SWSV_SecretReplicationAuto
  SWSV_SecretReplicationUserManaged = var.CRDPRFG_SWSV_SecretReplicationUserManaged
  resourceName                      = var.resourceName
  projectName                       = var.projectName
  deployedDate                      = var.deployedDate
  createdBy                         = var.createdBy
  tfModule                          = var.tfModule
  additionalTags                    = var.additionalTags
  SWSV_SecretAnnotations            = var.CRDPRFG_SWSV_SecretAnnotations
  SWSV_SecretVersionAliases         = var.CRDPRFG_SWSV_SecretVersionAliases
  SWSV_SecretVersionDestroyTtl      = var.CRDPRFG_SWSV_SecretVersionDestroyTtl
  SWSV_SecretTopics                 = var.CRDPRFG_SWSV_SecretTopics
  SWSV_SecretExpireTime             = var.CRDPRFG_SWSV_SecretExpireTime
  SWSV_SecretTtl                    = var.CRDPRFG_SWSV_SecretTtl
  SWSV_SecretRotation               = var.CRDPRFG_SWSV_SecretRotation
  SWSV_SecretVersionObjects         = var.CRDPRFG_SWSV_SecretVersionObjects
}

#---

module "cloudBuildTrigger" {
  source                                                   = "../../gcp/cloudBuild/githubRepoPullRequestCloudbuildTrigger"
  gcpProjectId                                             = var.gcpProjectId
  gcpRegion                                                = var.gcpRegion
  resourceName                                             = "${var.resourceName}-dev"
  cloudBuildTriggerServiceAccountAccountId                 = var.CRDPRFG_CloudBuildTriggerServiceAccountAccountId
  cloudBuildTriggerServiceAccountDisabled                  = var.CRDPRFG_CloudBuildTriggerServiceAccountDisabled
  cloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  cloudBuildTriggerServiceAccountRoleId                    = var.CRDPRFG_CloudBuildTriggerServiceAccountRoleId
  cloudBuildTriggerServiceAccountRoleStage                 = var.CRDPRFG_CloudBuildTriggerServiceAccountRoleStage
  cloudBuildTriggerYamlPath                                = var.CRDPRFG_CloudBuildTriggerYamlPath
  cloudBuildTriggerGithubRepoName                          = var.CRDPRFG_CloudBuildTriggerGithubRepoName
  cloudBuildTriggerBranchName                              = var.CRDPRFG_CloudBuildTriggerBranchName
  cloudBuildTriggerArtifactRepoName                        = var.CRDPRFG_CloudBuildTriggerArtifactRepoName
  cloudBuildTriggerBucketName                              = var.CRDPRFG_CloudBuildTriggerBucketName
  cloudBuildTriggerAdditionalSubstitutions                 = merge({
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

#---

module "alertPolicyCloudRunAppLogs" {
  source                          = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
  gcpProjectId                    = var.gcpProjectId
  gcpRegion                       = var.gcpRegion
  resourceName                    = var.resourceName
  alertPolicyCombiner             = "OR"
  alertPolicyConditions = {
    condition_matched_log = {
      filter = "resource.type=\"cloud_run_revision\"\nseverity=ERROR\nresource.labels.service_name=\"${var.resourceName}\""
      label_extractors = {
        "Summary" = "EXTRACT(textPayload)"
      }
    }
    display_name = "${var.resourceName} - Cloud Run Logs Alert Policy"
  }
  alertPolicyEnabled              = var.CRDPRFG_AlertPolicyCloudRunAppLogsEnabled
  alertPolicyNotificationChannels = var.CRDPRFG_AlertPolicyCloudRunAppLogsNotificationChannels
  alertPolicyAlertStrategy        = var.CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy
  projectName                     = var.projectName
  deployedDate                    = var.deployedDate
  createdBy                       = var.createdBy
  tfModule                        = var.tfModule
  additionalTags                  = var.additionalTags
  alertPolicySeverity             = var.CRDPRFG_AlertPolicyCloudRunAppLogsSeverity
  alertPolicyDocumentation        = var.CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation
}

#---

module "alertPolicyCloudRunAppCpuUsage" {
  source                          = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
  gcpProjectId                    = var.gcpProjectId
  gcpRegion                       = var.gcpRegion
  resourceName                    = var.resourceName
  alertPolicyCombiner             = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageCombiner
  alertPolicyConditions           = {
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
  }#var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageConditions
  alertPolicyEnabled              = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled
  alertPolicyNotificationChannels = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageNotificationChannels
  alertPolicyAlertStrategy        = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy
  projectName                     = var.projectName
  deployedDate                    = var.deployedDate
  createdBy                       = var.createdBy
  tfModule                        = var.tfModule
  additionalTags                  = var.additionalTags
  alertPolicySeverity             = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity
  alertPolicyDocumentation        = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation
}

#---

module "alertPolicyCloudRunAppMemUsage" {
  source                          = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
  gcpProjectId                    = var.gcpProjectId
  gcpRegion                       = var.gcpRegion
  resourceName                    = var.resourceName
  alertPolicyCombiner             = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageCombiner
  alertPolicyConditions           = {
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
  }#var.CRDPRFG_AlertPolicyCloudRunAppMemUsageConditions
  alertPolicyEnabled              = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled
  alertPolicyNotificationChannels = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageNotificationChannels
  alertPolicyAlertStrategy        = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy
  projectName                     = var.projectName
  deployedDate                    = var.deployedDate
  createdBy                       = var.createdBy
  tfModule                        = var.tfModule
  additionalTags                  = var.additionalTags
  alertPolicySeverity             = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity
  alertPolicyDocumentation        = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation
}

#---

# module "cloudRunAlertPolicy" {
#   source = "../../gcp/cloudMonitoring/cloudRunError"

#   resourceName                             = var.resourceName
#   projectId                                = var.gcpProjectId
#   cloudRunAlertPolicyNotificationChannelId = var.CRDPRFG_CloudRunAlertPolicyNotificationChannelId
#   cloudRunAlertPolicyNotificationRateLimit = var.CRDPRFG_CloudRunAlertPolicyNotificationRateLimit
#   cloudRunAlertPolicyAutoClose             = var.CRDPRFG_CloudRunAlertPolicyAutoClose
# }

# module "cloudRunMemAlertPolicy" {
#   source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"

#   gcpProjectId        = var.gcpProjectId
#   gcpRegion           = var.gcpRegion
#   resourceName        = "${var.resourceName}-cloud-run-mem"
#   alertPolicyCombiner = "OR"
#   alertPolicyConditions = {
#     condition_monitoring_query_language = {
#       duration = "300s"
#       trigger = {
#         percent = var.CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
#       }
#       query = <<EOT
# fetch cloud_run_revision
# | metric 'run.googleapis.com/container/memory/utilizations'
# | filter (resource.service_name == '${var.resourceName}')
# | group_by 5m,
#     [value_utilizations_percentile: percentile(value.utilizations, 99)]
# | every 5m
# | condition val() > .${var.CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent}
# EOT
#     }
#     display_name = "${var.resourceName} - High Mem Utilization in Cloud Run Service"
#   }
#   alertPolicyEnabled              = true
#   alertPolicyNotificationChannels = var.CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels
#   createdBy                       = var.createdBy
#   deployedDate                    = var.deployedDate
#   projectName                     = var.projectName
#   additionalAlertPolicyUserLabels = var.additionalLabels
#   alertPolicySeverity             = "WARNING"
# }

# module "cloudRunCpuAlertPolicy" {
#   source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"

#   gcpProjectId        = var.gcpProjectId
#   gcpRegion           = var.gcpRegion
#   resourceName        = "${var.resourceName}-cloud-run-cpu"
#   alertPolicyCombiner = "OR"
#   alertPolicyConditions = {
#     condition_monitoring_query_language = {
#       duration = "300s"
#       trigger = {
#         percent = var.CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
#       }
#       query = <<EOT
# fetch cloud_run_revision
# | metric 'run.googleapis.com/container/memory/utilizations'
# | filter (resource.service_name == '${var.resourceName}')
# | group_by 5m,
#     [value_utilizations_percentile: percentile(value.utilizations, 99)]
# | every 5m
# | condition val() > .${var.CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent}
# EOT
#     }
#     display_name = "${var.resourceName} - High Cpu Utilization in Cloud Run Service"
#   }
#   alertPolicyEnabled              = true
#   alertPolicyNotificationChannels = var.CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels
#   createdBy                       = var.createdBy
#   deployedDate                    = var.deployedDate
#   projectName                     = var.projectName
#   additionalAlertPolicyUserLabels = var.additionalLabels
#   alertPolicySeverity             = "WARNING"
# }