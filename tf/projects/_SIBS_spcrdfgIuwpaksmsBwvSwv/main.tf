
module "SPCRDFG" {
  source                                            = "../_SPCRDFG_stagingProdCloudRunDeploymentFromGithub"
  gcpProjectId                                      = var.gcpProjectId
  gcpRegion                                         = var.gcpRegion
  SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto        = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto
  SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged
  resourceName                                      = var.resourceName
  projectName                                       = var.projectName
  deployedDate                                      = var.deployedDate
  createdBy                                         = var.createdBy
  tfModule                                          = var.tfModule
  additionalTags                                    = var.additionalTags
  SPCRDFG_CRDPRFG_SWSV_SecretAnnotations            = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretAnnotations
  SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases         = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases
  SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl      = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl
  SPCRDFG_CRDPRFG_SWSV_SecretTopics                 = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTopics
  SPCRDFG_CRDPRFG_SWSV_SecretExpireTime             = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretExpireTime
  SPCRDFG_CRDPRFG_SWSV_SecretTtl                    = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTtl
  SPCRDFG_CRDPRFG_SWSV_SecretRotation               = var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretRotation
  SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects = concat([{
    secret_data = "{\"SECRET_NAME\":\"${module.SWV_Staging.SWV_SecretArn}\",\"AWS_ACCESS_KEY_ID\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeyId}\",\"AWS_SECRET_ACCESS_KEY\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeySecret}\"}"
  }], var.SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects)
  SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled                  = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled
  SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  SPCRDFG_CloudBuildTriggerServiceAccountsRoleId                           = var.SIBS_SPCRDFG_CloudBuildTriggerServiceAccountsRoleId
  SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage                 = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage
  SPCRDFG_CloudBuildTriggerYamlPath                                        = var.SIBS_SPCRDFG_CloudBuildTriggerYamlPath
  SPCRDFG_CloudBuildTriggerGithubRepoName                                  = var.SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName
  SPCRDFG_CloudBuildTriggerBranchName                                      = var.SIBS_SPCRDFG_CloudBuildTriggerBranchName
  SPCRDFG_CloudBuildTriggerArtifactRepoName                                = var.SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName
  SPCRDFG_CloudBuildTriggerBucketName                                      = var.SIBS_SPCRDFG_CloudBuildTriggerBucketName
  SPCRDFG_CRDPRFG_CloudRunConcurrentRequests                               = var.SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests
  SPCRDFG_CRDPRFG_CloudRunRequestsTimeout                                  = var.SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout
  SPCRDFG_CRDPRFG_CloudRunPortNumber                                       = var.SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber
  SPCRDFG_CRDPRFG_CloudRunMinInstances                                     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances
  SPCRDFG_CRDPRFG_CloudRunMaxInstances                                     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances
  SPCRDFG_CRDPRFG_CloudRunVpcConnector                                     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunVpcConnector
  SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus                                    = var.SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus
  SPCRDFG_CRDPRFG_CloudRunAmountOfMemory                                   = var.SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory
  SPCRDFG_CRDPRFG_CloudRunEnvVariableName                                  = var.SIBS_SPCRDFG_CRDPRFG_CloudRunEnvVariableName
  SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions                 = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled                        = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled
  SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels                          = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy                  = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity                       = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation                  = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation
  SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent         = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent                = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled                    = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy              = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity                   = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation              = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation
  SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent      = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent             = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled                    = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy              = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity                   = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity
  SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation              = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto                     = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged              = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations                         = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases                      = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl                   = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics                              = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime                          = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl                                 = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation                            = var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation
  SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects = concat([{
    secret_data = "{\"SECRET_NAME\":\"${module.SWV_Prod.SWV_SecretArn}\",\"AWS_ACCESS_KEY_ID\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeyId}\",\"AWS_SECRET_ACCESS_KEY\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeySecret}\"}"
  }], var.SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects)
  SPCRDFG_CRDPFG_ServiceAccountDisabled                              = var.SIBS_SPCRDFG_CRDPFG_ServiceAccountDisabled
  SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists             = var.SIBS_SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists
  SPCRDFG_CRDPFG_ServiceAccountRoleStage                             = var.SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage
  SPCRDFG_CRDPFG_CloudRunConcurrentRequests                          = var.SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests
  SPCRDFG_CRDPFG_CloudRunRequestsTimeout                             = var.SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout
  SPCRDFG_CRDPFG_CloudRunPortNumber                                  = var.SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber
  SPCRDFG_CRDPFG_CloudRunMinInstances                                = var.SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances
  SPCRDFG_CRDPFG_CloudRunMaxInstances                                = var.SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances
  SPCRDFG_CRDPFG_CloudRunVpcConnector                                = var.SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector
  SPCRDFG_CRDPFG_CloudRunNumberOfVcpus                               = var.SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus
  SPCRDFG_CRDPFG_CloudRunAmountOfMemory                              = var.SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory
  SPCRDFG_CRDPFG_CloudRunEnvVariableName                             = var.SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName
  SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions            = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions
  SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled                      = var.SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled
  SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels        = var.SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy                = var.SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy
  SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity                     = var.SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity
  SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation                = var.SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent        = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled                       = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy                 = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity                      = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation                 = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent    = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent           = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled                       = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy                 = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity                      = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation                 = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation
}

#---

module "IUWPAKSMS" {
  source                                  = "../_IUWPAKSMS_iamUserWithPolicyAccessKeySecretsManagerSecret"
  awsRegion                               = var.awsRegion
  resourceName                            = var.resourceName
  IUWPAKSMS_UWP_IamUserPath               = var.SIBS_IUWPAKSMS_UWP_IamUserPath
  IUWPAKSMS_UWP_IamUserPermissionBoundary = var.SIBS_IUWPAKSMS_UWP_IamUserPermissionBoundary
  IUWPAKSMS_UWP_IamUserForceDestroy       = var.SIBS_IUWPAKSMS_UWP_IamUserForceDestroy
  projectName                             = var.projectName
  createdBy                               = var.createdBy
  deployedDate                            = var.deployedDate
  tfModule                                = var.tfModule
  additionalTags                          = var.additionalTags
  IUWPAKSMS_UWP_IamPolicyDescription      = var.SIBS_IUWPAKSMS_UWP_IamPolicyDescription
  IUWPAKSMS_UWP_IamPolicyNamePrefix       = var.SIBS_IUWPAKSMS_UWP_IamPolicyNamePrefix
  IUWPAKSMS_UWP_IamPolicyPath             = var.SIBS_IUWPAKSMS_UWP_IamPolicyPath
  IUWPAKSMS_UWP_IamPolicyVersion          = var.SIBS_IUWPAKSMS_UWP_IamPolicyVersion
  IUWPAKSMS_UWP_IamPolicyDocumentStatements = concat([
    {
      Effect = "Allow"
      Action = [
        "s3:ListAllMyBuckets"
      ]
      Resource = ["*"]
      Sid      = "allBuckets"
    },
    {
      Effect = "Allow"
      Action = [
        "s3:ListBucket"
      ]
      Resource = [module.BWV.BWV_S3BucketArn]
      Sid      = "s3BucketActions"
    },
    {
      Effect = "Allow"
      Action = [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ]
      Resource = ["${module.BWV.BWV_S3BucketArn}/*"]
      Sid      = "s3BucketObjectsActions"
    },
    {
      Sid    = "allSecrets"
      Effect = "Allow"
      Action = [
        "secretsmanager:ListSecrets"
      ]
      Resource = ["*"]
    },
    {
      Sid    = "specificSecret"
      Effect = "Allow"
      Action = [
        "secretsmanager:GetSecretValue"
      ]
      Resource = [
        module.SWV_Staging.SWV_SecretArn,
        module.SWV_Prod.SWV_SecretArn
      ]
    }
  ], var.SIBS_IUWPAKSMS_UWP_IamPolicyDocumentStatements)
  IUWPAKSMS_IamAccessKeyPgpKey             = var.SIBS_IUWPAKSMS_IamAccessKeyPgpKey
  IUWPAKSMS_IamAccessKeyStatus             = var.SIBS_IUWPAKSMS_IamAccessKeyStatus
  IUWPAKSMS_SWV_SecretDescription          = var.SIBS_IUWPAKSMS_SWV_SecretDescription
  IUWPAKSMS_SWV_SecretKmsKeyId             = var.SIBS_IUWPAKSMS_SWV_SecretKmsKeyId
  IUWPAKSMS_SWV_SecretNamePrefix           = var.SIBS_IUWPAKSMS_SWV_SecretNamePrefix
  IUWPAKSMS_SWV_SecretPolicy               = var.SIBS_IUWPAKSMS_SWV_SecretPolicy
  IUWPAKSMS_SWV_SecretRecoveryWindowInDays = var.SIBS_IUWPAKSMS_SWV_SecretRecoveryWindowInDays
  IUWPAKSMS_SWV_SecretReplica              = var.SIBS_IUWPAKSMS_SWV_SecretReplica
  IUWPAKSMS_SWV_SecretForceSecretOverwrite = var.SIBS_IUWPAKSMS_SWV_SecretForceSecretOverwrite
  IUWPAKSMS_SWV_SecretVersionSecretString  = var.SIBS_IUWPAKSMS_SWV_SecretVersionSecretString
  IUWPAKSMS_SWV_SecretVersionSecretBinary  = var.SIBS_IUWPAKSMS_SWV_SecretVersionSecretBinary
  IUWPAKSMS_SWV_SecretVersionStages        = var.SIBS_IUWPAKSMS_SWV_SecretVersionStages
}

#---

module "BWV" {
  source                                       = "../../aws/s3/_BWV_bucketWithVersioning"
  awsRegion                                    = var.awsRegion
  resourceName                                 = var.resourceName
  BWV_S3BucketPrefix                           = var.SIBS_BWV_S3BucketPrefix
  BWV_S3BucketForceDestroy                     = var.SIBS_BWV_S3BucketForceDestroy
  BWV_S3BucketObjectLockEnabled                = var.SIBS_BWV_S3BucketObjectLockEnabled
  projectName                                  = var.projectName
  createdBy                                    = var.createdBy
  tfModule                                     = var.tfModule
  deployedDate                                 = var.deployedDate
  additionalTags                               = var.additionalTags
  BWV_S3BucketVersioningConfigurationStatus    = var.SIBS_BWV_S3BucketVersioningConfigurationStatus
  BWV_S3BucketVersioningConfigurationMfaDelete = var.SIBS_BWV_S3BucketVersioningConfigurationMfaDelete
  BWV_S3BucketVersioningExpectedBucketOwner    = var.SIBS_BWV_S3BucketVersioningExpectedBucketOwner
  BWV_S3BucketVersioningMfa                    = var.SIBS_BWV_S3BucketVersioningMfa
}

#---

module "SWV_Staging" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.SIBS_SWV_Staging_SecretDescription
  SWV_SecretKmsKeyId             = var.SIBS_SWV_Staging_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.SIBS_SWV_Staging_SecretNamePrefix
  resourceName                   = "${var.resourceName}-staging"
  SWV_SecretPolicy               = var.SIBS_SWV_Staging_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.SIBS_SWV_Staging_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.SIBS_SWV_Staging_SecretReplica
  SWV_SecretForceSecretOverwrite = var.SIBS_SWV_Staging_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString = merge({
    S3_BUCKET = module.BWV.BWV_S3BucketName
  }, var.SIBS_SWV_Staging_SecretVersionSecretString)
  SWV_SecretVersionSecretBinary = var.SIBS_SWV_Staging_SecretVersionSecretBinary
  SWV_SecretVersionStages       = var.SIBS_SWV_Staging_SecretVersionStages
}

#---

module "Prod" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.SIBS_SWV_Prod_SecretDescription
  SWV_SecretKmsKeyId             = var.SIBS_SWV_Prod_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.SIBS_SWV_Prod_SecretNamePrefix
  resourceName                   = "${var.resourceName}-prod"
  SWV_SecretPolicy               = var.SIBS_SWV_Prod_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.SIBS_SWV_Prod_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.SIBS_SWV_Prod_SecretReplica
  SWV_SecretForceSecretOverwrite = var.SIBS_SWV_Prod_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString = merge({
    S3_BUCKET = module.BWV.BWV_S3BucketName
  }, var.SIBS_SWV_Prod_SecretVersionSecretString)
  SWV_SecretVersionSecretBinary = var.SIBS_SWV_Prod_SecretVersionSecretBinary
  SWV_SecretVersionStages       = var.SIBS_SWV_Prod_SecretVersionStages
}

#---