
    module "SWSV_Cloudbuild" {
  source = "../../gcp/secretsManager/_SWSV_secretWithSecretVersion"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
SWSV_SecretReplicationAuto = var.CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto
SWSV_SecretReplicationUserManaged = var.CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged
resourceName = var.resourceName
projectName = var.projectName
deployedDate = var.deployedDate
createdBy = var.createdBy
tfModule = var.tfModule
additionalTags = var.additionalTags
SWSV_SecretAnnotations = var.CRDPFG_SWSV_Cloudbuild_SecretAnnotations
SWSV_SecretVersionAliases = var.CRDPFG_SWSV_Cloudbuild_SecretVersionAliases
SWSV_SecretVersionDestroyTtl = var.CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl
SWSV_SecretTopics = var.CRDPFG_SWSV_Cloudbuild_SecretTopics
SWSV_SecretExpireTime = var.CRDPFG_SWSV_Cloudbuild_SecretExpireTime
SWSV_SecretTtl = var.CRDPFG_SWSV_Cloudbuild_SecretTtl
SWSV_SecretRotation = var.CRDPFG_SWSV_Cloudbuild_SecretRotation
SWSV_SecretVersionObjects = var.CRDPFG_SWSV_Cloudbuild_SecretVersionObjects
}

#---

    module "cloudbuildTrigger" {
  source = "../gcp/cloudBuild/githubRepoPushCloudbuildTrigger"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
serviceAccountAccountId = var.serviceAccountAccountId
serviceAccountDisabled = var.serviceAccountDisabled
serviceAccountCreateIgnoreAlreadyExists = var.serviceAccountCreateIgnoreAlreadyExists
serviceAccountRoleId = var.serviceAccountRoleId
serviceAccountRoleStage = var.serviceAccountRoleStage
cloudBuildTriggerYamlPath = var.cloudBuildTriggerYamlPath
cloudBuildTriggerGithubRepoName = var.cloudBuildTriggerGithubRepoName
cloudBuildTriggerBranchName = var.cloudBuildTriggerBranchName
cloudBuildTriggerArtifactRepoName = var.cloudBuildTriggerArtifactRepoName
cloudBuildTriggerBucketName = var.cloudBuildTriggerBucketName
cloudBuildTriggerAdditionalSubstitutions = var.cloudBuildTriggerAdditionalSubstitutions
}

#---

    module "cloudRunAlertPolicy" {
  source = "../../gcp/cloudMonitoring/cloudRunError"
resourceName = var.resourceName
gcpProjectId = var.gcpProjectId
cloudRunAlertPolicyNotificationRateLimit = var.CRDPFG_CloudRunAlertPolicyNotificationRateLimit
cloudRunAlertPolicyAutoClose = var.CRDPFG_CloudRunAlertPolicyAutoClose
}

#---

    module "cloudRunMemAlertPolicy" {
  source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
alertPolicyCombiner = var.CRDPFG_CloudRunMemAlertPolicyCombiner
alertPolicyConditions = var.CRDPFG_CloudRunMemAlertPolicyConditions
alertPolicyEnabled = var.CRDPFG_CloudRunMemAlertPolicyEnabled
alertPolicyNotificationChannels = var.CRDPFG_CloudRunMemAlertPolicyNotificationChannels
alertPolicyAlertStrategy = var.CRDPFG_CloudRunMemAlertPolicyAlertStrategy
projectName = var.projectName
deployedDate = var.deployedDate
createdBy = var.createdBy
tfModule = var.tfModule
additionalTags = var.additionalTags
alertPolicySeverity = var.CRDPFG_CloudRunMemAlertPolicySeverity
alertPolicyDocumentation = var.CRDPFG_CloudRunMemAlertPolicyDocumentation
}

#---

    module "cloudRunCpuAlertPolicy" {
  source = "../../gcp/cloudMonitoring/genericMonitoringAlertPolicy"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
resourceName = var.resourceName
alertPolicyCombiner = var.CRDPFG_CloudRunCpuAlertPolicyCombiner
alertPolicyConditions = var.CRDPFG_CloudRunCpuAlertPolicyConditions
alertPolicyEnabled = var.CRDPFG_CloudRunCpuAlertPolicyEnabled
alertPolicyNotificationChannels = var.CRDPFG_CloudRunCpuAlertPolicyNotificationChannels
alertPolicyAlertStrategy = var.CRDPFG_CloudRunCpuAlertPolicyAlertStrategy
projectName = var.projectName
deployedDate = var.deployedDate
createdBy = var.createdBy
tfModule = var.tfModule
additionalTags = var.additionalTags
alertPolicySeverity = var.CRDPFG_CloudRunCpuAlertPolicySeverity
alertPolicyDocumentation = var.CRDPFG_CloudRunCpuAlertPolicyDocumentation
}

#---
