
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
  resourceName                                             = var.resourceName
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
  cloudBuildTriggerAdditionalSubstitutions                 = var.CRDPRFG_CloudBuildTriggerAdditionalSubstitutions
}

#---

module "alertPolicyCloudRunAppLogs" {
  source                          = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
  gcpProjectId                    = var.gcpProjectId
  gcpRegion                       = var.gcpRegion
  resourceName                    = var.resourceName
  alertPolicyCombiner             = var.CRDPRFG_AlertPolicyCloudRunAppLogsCombiner
  alertPolicyConditions           = var.CRDPRFG_AlertPolicyCloudRunAppLogsConditions
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
  alertPolicyConditions           = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageConditions
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
  alertPolicyConditions           = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageConditions
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
