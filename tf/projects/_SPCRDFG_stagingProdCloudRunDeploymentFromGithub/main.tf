
module "CRDPRFG" {
  source                                                           = "../_CRDPRFG_cloudRunDeploymentPullRequestFromGithub"
  gcpProjectId                                                     = var.gcpProjectId
  gcpRegion                                                        = var.gcpRegion
  CRDPRFG_SWSV_SecretReplicationAuto                               = var.SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto
  CRDPRFG_SWSV_SecretReplicationUserManaged                        = var.SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged
  resourceName                                                     = "${var.resourceName}-staging"
  projectName                                                      = var.projectName
  deployedDate                                                     = var.deployedDate
  createdBy                                                        = var.createdBy
  tfModule                                                         = var.tfModule
  additionalTags                                                   = var.additionalTags
  CRDPRFG_SWSV_SecretAnnotations                                   = var.SPCRDFG_CRDPRFG_SWSV_SecretAnnotations
  CRDPRFG_SWSV_SecretVersionAliases                                = var.SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases
  CRDPRFG_SWSV_SecretVersionDestroyTtl                             = var.SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl
  CRDPRFG_SWSV_SecretTopics                                        = var.SPCRDFG_CRDPRFG_SWSV_SecretTopics
  CRDPRFG_SWSV_SecretExpireTime                                    = var.SPCRDFG_CRDPRFG_SWSV_SecretExpireTime
  CRDPRFG_SWSV_SecretTtl                                           = var.SPCRDFG_CRDPRFG_SWSV_SecretTtl
  CRDPRFG_SWSV_SecretRotation                                      = var.SPCRDFG_CRDPRFG_SWSV_SecretRotation
  CRDPRFG_SWSV_SecretVersionObjects                                = var.SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects
  CRDPRFG_CloudBuildTriggerServiceAccountDisabled                  = var.SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled
  CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  CRDPRFG_CloudBuildTriggerServiceAccountRoleId                    = "${var.SPCRDFG_CloudBuildTriggerServiceAccountsRoleId}Staging"
  CRDPRFG_CloudBuildTriggerServiceAccountRoleStage                 = var.SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage
  CRDPRFG_CloudBuildTriggerYamlPath                                = var.SPCRDFG_CloudBuildTriggerYamlPath
  CRDPRFG_CloudBuildTriggerGithubRepoName                          = var.SPCRDFG_CloudBuildTriggerGithubRepoName
  CRDPRFG_CloudBuildTriggerBranchName                              = var.SPCRDFG_CloudBuildTriggerBranchName
  CRDPRFG_CloudBuildTriggerArtifactRepoName                        = var.SPCRDFG_CloudBuildTriggerArtifactRepoName
  CRDPRFG_CloudBuildTriggerBucketName                              = var.SPCRDFG_CloudBuildTriggerBucketName
  CRDPRFG_CloudRunConcurrentRequests                               = var.SPCRDFG_CRDPRFG_CloudRunConcurrentRequests
  CRDPRFG_CloudRunRequestsTimeout                                  = var.SPCRDFG_CRDPRFG_CloudRunRequestsTimeout
  CRDPRFG_CloudRunPortNumber                                       = var.SPCRDFG_CRDPRFG_CloudRunPortNumber
  CRDPRFG_CloudRunMinInstances                                     = var.SPCRDFG_CRDPRFG_CloudRunMinInstances
  CRDPRFG_CloudRunMaxInstances                                     = var.SPCRDFG_CRDPRFG_CloudRunMaxInstances
  CRDPRFG_CloudRunVpcConnector                                     = var.SPCRDFG_CRDPRFG_CloudRunVpcConnector
  CRDPRFG_CloudRunNumberOfVcpus                                    = var.SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus
  CRDPRFG_CloudRunAmountOfMemory                                   = var.SPCRDFG_CRDPRFG_CloudRunAmountOfMemory
  CRDPRFG_CloudRunEnvVariableName                                  = var.SPCRDFG_CRDPRFG_CloudRunEnvVariableName
  CRDPRFG_CloudBuildTriggerAdditionalSubstitutions                 = var.SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions
  CRDPRFG_AlertPolicyCloudRunAppLogsEnabled                        = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled
  CRDPRFG_AlertPolicyNotificationChannels                          = var.SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels
  CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy                  = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy
  CRDPRFG_AlertPolicyCloudRunAppLogsSeverity                       = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity
  CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation                  = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation
  CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent         = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent                = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent
  CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled                    = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled
  CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy              = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy
  CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity                   = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity
  CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation              = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation
  CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent      = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent             = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled                    = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled
  CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy              = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy
  CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity                   = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity
  CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation              = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation
}

#---

module "CRDPFG" {
  source                                                     = "../_CRDPFG_cloudRunDeploymentPushFromGithub"
  gcpProjectId                                               = var.gcpProjectId
  gcpRegion                                                  = var.gcpRegion
  CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto               = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto
  CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged        = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged
  resourceName                                               = var.resourceName
  projectName                                                = var.projectName
  deployedDate                                               = var.deployedDate
  createdBy                                                  = var.createdBy
  tfModule                                                   = var.tfModule
  additionalTags                                             = var.additionalTags
  CRDPFG_SWSV_Cloudbuild_SecretAnnotations                   = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations
  CRDPFG_SWSV_Cloudbuild_SecretVersionAliases                = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases
  CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl             = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl
  CRDPFG_SWSV_Cloudbuild_SecretTopics                        = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics
  CRDPFG_SWSV_Cloudbuild_SecretExpireTime                    = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime
  CRDPFG_SWSV_Cloudbuild_SecretTtl                           = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl
  CRDPFG_SWSV_Cloudbuild_SecretRotation                      = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation
  CRDPFG_SWSV_Cloudbuild_SecretVersionObjects                = var.SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects
  CRDPFG_ServiceAccountDisabled                              = var.SPCRDFG_CRDPFG_ServiceAccountDisabled
  CRDPFG_ServiceAccountCreateIgnoreAlreadyExists             = var.SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists
  CRDPFG_ServiceAccountRoleId                                = var.SPCRDFG_CloudBuildTriggerServiceAccountsRoleId
  CRDPFG_ServiceAccountRoleStage                             = var.SPCRDFG_CRDPFG_ServiceAccountRoleStage
  CRDPFG_CloudBuildTriggerYamlPath                           = var.SPCRDFG_CloudBuildTriggerYamlPath
  CRDPFG_CloudBuildTriggerGithubRepoName                     = var.SPCRDFG_CloudBuildTriggerGithubRepoName
  CRDPFG_CloudBuildTriggerBranchName                         = var.SPCRDFG_CloudBuildTriggerBranchName
  CRDPFG_CloudBuildTriggerArtifactRepoName                   = var.SPCRDFG_CloudBuildTriggerArtifactRepoName
  CRDPFG_CloudBuildTriggerBucketName                         = var.SPCRDFG_CloudBuildTriggerBucketName
  CRDPFG_CloudRunConcurrentRequests                          = var.SPCRDFG_CRDPFG_CloudRunConcurrentRequests
  CRDPFG_CloudRunRequestsTimeout                             = var.SPCRDFG_CRDPFG_CloudRunRequestsTimeout
  CRDPFG_CloudRunPortNumber                                  = var.SPCRDFG_CRDPFG_CloudRunPortNumber
  CRDPFG_CloudRunMinInstances                                = var.SPCRDFG_CRDPFG_CloudRunMinInstances
  CRDPFG_CloudRunMaxInstances                                = var.SPCRDFG_CRDPFG_CloudRunMaxInstances
  CRDPFG_CloudRunVpcConnector                                = var.SPCRDFG_CRDPFG_CloudRunVpcConnector
  CRDPFG_CloudRunNumberOfVcpus                               = var.SPCRDFG_CRDPFG_CloudRunNumberOfVcpus
  CRDPFG_CloudRunAmountOfMemory                              = var.SPCRDFG_CRDPFG_CloudRunAmountOfMemory
  CRDPFG_CloudRunEnvVariableName                             = var.SPCRDFG_CRDPFG_CloudRunEnvVariableName
  CRDPFG_CloudBuildTriggerAdditionalSubstitutions            = var.SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions
  CRDPFG_CloudRunLogsAlertPolicyEnabled                      = var.SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled
  CRDPFG_CloudRunInfraAlertPolicyNotificationChannels        = var.SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  CRDPFG_CloudRunLogsAlertPolicyAlertStrategy                = var.SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy
  CRDPFG_CloudRunLogsAlertPolicySeverity                     = var.SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity
  CRDPFG_CloudRunLogsAlertPolicyDocumentation                = var.SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation
  CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent        = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  CRDPFG_CloudRunMemAlertPolicyEnabled                       = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled
  CRDPFG_CloudRunMemAlertPolicyAlertStrategy                 = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy
  CRDPFG_CloudRunMemAlertPolicySeverity                      = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity
  CRDPFG_CloudRunMemAlertPolicyDocumentation                 = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation
  CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent    = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent           = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent
  CRDPFG_CloudRunCpuAlertPolicyEnabled                       = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled
  CRDPFG_CloudRunCpuAlertPolicyAlertStrategy                 = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy
  CRDPFG_CloudRunCpuAlertPolicySeverity                      = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity
  CRDPFG_CloudRunCpuAlertPolicyDocumentation                 = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation
}

#---
