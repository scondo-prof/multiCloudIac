provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

module "CRDPRFG" {
  source = "../_CRDPRFG_cloudRunDeploymentPullRequestFromGithub"

  gcpProjectId                                                     = var.gcpProjectId
  gcpRegion                                                        = var.gcpRegion
  resourceName                                                     = "${var.resourceName}-staging"
  projectName                                                      = var.projectName
  deployedDate                                                     = var.deployedDate
  createdBy                                                        = var.createdBy
  CRDPRFG_SecretVersionSecretData                                  = var.SPCRDFG_CRDPRFG_SecretVersionSecretData
  CRDPRFG_SecretVersionEnabled                                     = var.SPCRDFG_CRDPRFG_SecretVersionEnabled
  CRDPRFG_SecretVersionDeletionPolicy                              = var.SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy
  CRDPRFG_CloudBuildTriggerServiceAccountDisabled                  = var.SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled
  CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  CRDPRFG_CloudBuildTriggerRoleId                                  = "${var.SPCRDFG_CloudBuildTriggerRoleId}Staging"
  CRDPRFG_CloudBuildTriggerRoleStage                               = var.SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage
  CRDPRFG_CloudBuildTriggerYamlPath                                = var.SPCRDFG_CRDPRFG_CloudBuildTriggerYamlPath
  CRDPRFG_CloudBuildTriggerGithubRepoName                          = var.SPCRDFG_CloudBuildTriggerGithubRepoName
  CRDPRFG_CloudBuildTriggerBranchName                              = var.SPCRDFG_CRDPRFG_CloudBuildTriggerBranchName
  CRDPRFG_CloudBuildTriggerArtifactRepoName                        = var.SPCRDFG_CloudBuildTriggerArtifactRepoName
  CRDPRFG_CloudBuildTriggerBucketName                              = var.SPCRDFG_CRDPRFG_CloudBuildTriggerBucketName
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
  CRDPRFG_CloudRunAlertPolicyNotificationChannelId                 = var.SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationChannelId
  CRDPRFG_CloudRunAlertPolicyNotificationRateLimit                 = var.SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationRateLimit
  CRDPRFG_CloudRunAlertPolicyAutoClose                             = var.SPCRDFG_CRDPRFG_CloudRunAlertPolicyAutoClose
  CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent      = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent             = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels             = var.SPCRDFG_CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels
  additionalLabels                                                 = var.additionalLabels
  CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent         = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent                = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent
}

module "CRDPFG" {
  source = "../_CRDPFG_cloudRunDeploymentPushFromGithub"

  gcpProjectId                                                    = var.gcpProjectId
  gcpRegion                                                       = var.gcpRegion
  resourceName                                                    = var.resourceName
  projectName                                                     = var.projectName
  deployedDate                                                    = var.deployedDate
  createdBy                                                       = var.createdBy
  CRDPFG_SecretVersionSecretData                                  = var.SPCRDFG_CRDPFG_SecretVersionSecretData
  CRDPFG_SecretVersionEnabled                                     = var.SPCRDFG_CRDPFG_SecretVersionEnabled
  CRDPFG_SecretVersionDeletionPolicy                              = var.SPCRDFG_CRDPFG_SecretVersionDeletionPolicy
  CRDPFG_CloudBuildTriggerServiceAccountDisabled                  = var.SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountDisabled
  CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  CRDPFG_CloudBuildTriggerRoleId                                  = "${var.SPCRDFG_CloudBuildTriggerRoleId}Prod"
  CRDPFG_CloudBuildTriggerRoleStage                               = var.SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage
  CRDPFG_CloudBuildTriggerYamlPath                                = var.SPCRDFG_CRDPFG_CloudBuildTriggerYamlPath
  CRDPFG_CloudBuildTriggerGithubRepoName                          = var.SPCRDFG_CloudBuildTriggerGithubRepoName
  CRDPFG_CloudBuildTriggerBranchName                              = var.SPCRDFG_CRDPFG_CloudBuildTriggerBranchName
  CRDPFG_CloudBuildTriggerArtifactRepoName                        = var.SPCRDFG_CloudBuildTriggerArtifactRepoName
  CRDPFG_CloudBuildTriggerBucketName                              = var.SPCRDFG_CRDPFG_CloudBuildTriggerBucketName
  CRDPFG_CloudRunConcurrentRequests                               = var.SPCRDFG_CRDPFG_CloudRunConcurrentRequests
  CRDPFG_CloudRunRequestsTimeout                                  = var.SPCRDFG_CRDPFG_CloudRunRequestsTimeout
  CRDPFG_CloudRunPortNumber                                       = var.SPCRDFG_CRDPFG_CloudRunPortNumber
  CRDPFG_CloudRunMinInstances                                     = var.SPCRDFG_CRDPFG_CloudRunMinInstances
  CRDPFG_CloudRunMaxInstances                                     = var.SPCRDFG_CRDPFG_CloudRunMaxInstances
  CRDPFG_CloudRunVpcConnector                                     = var.SPCRDFG_CRDPFG_CloudRunVpcConnector
  CRDPFG_CloudRunNumberOfVcpus                                    = var.SPCRDFG_CRDPFG_CloudRunNumberOfVcpus
  CRDPFG_CloudRunAmountOfMemory                                   = var.SPCRDFG_CRDPFG_CloudRunAmountOfMemory
  CRDPFG_CloudRunEnvVariableName                                  = var.SPCRDFG_CRDPFG_CloudRunEnvVariableName
  CRDPFG_CloudBuildTriggerAdditionalSubstitutions                 = var.SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions
  CRDPFG_CloudRunAlertPolicyNotificationChannelId                 = var.SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationChannelId
  CRDPFG_CloudRunAlertPolicyNotificationRateLimit                 = var.SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationRateLimit
  CRDPFG_CloudRunAlertPolicyAutoClose                             = var.SPCRDFG_CRDPFG_CloudRunAlertPolicyAutoClose
  CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent      = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent             = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  CRDPFG_CloudRunInfraAlertPolicyNotificationChannels             = var.SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  additionalLabels                                                = var.additionalLabels
  CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent         = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent                = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent
}