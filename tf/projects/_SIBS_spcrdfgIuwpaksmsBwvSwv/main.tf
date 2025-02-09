
module "SPCRDFG" {
  source                                                                   = "../_SPCRDFG_stagingProdCloudRunDeploymentFromGithub"
  gcpProjectId                                                             = var.gcpProjectId
  gcpRegion                                                                = var.gcpRegion
  resourceName                                                             = var.resourceName
  projectName                                                              = var.projectName
  deployedDate                                                             = var.deployedDate
  createdBy                                                                = var.createdBy
  SPCRDFG_CRDPRFG_SecretVersionSecretData                                  = "{\"SECRET_NAME\":\"${module.SWV_Staging.SWV_SecretArn}\",\"AWS_ACCESS_KEY_ID\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeyId}\",\"AWS_SECRET_ACCESS_KEY\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeySecret}\"}"
  SPCRDFG_CRDPRFG_SecretVersionEnabled                                     = var.SIBS_SPCRDFG_CRDPRFG_SecretVersionEnabled
  SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy                              = var.SIBS_SPCRDFG_CRDPRFG_SecretVersionDeletionPolicy
  SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled                  = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled
  SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  SPCRDFG_CloudBuildTriggerRoleId                                          = var.SIBS_SPCRDFG_CloudBuildTriggerRoleId
  SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage                               = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerRoleStage
  SPCRDFG_CRDPRFG_CloudBuildTriggerYamlPath                                = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerYamlPath
  SPCRDFG_CloudBuildTriggerGithubRepoName                                  = var.SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName
  SPCRDFG_CRDPRFG_CloudBuildTriggerBranchName                              = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerBranchName
  SPCRDFG_CloudBuildTriggerArtifactRepoName                                = var.SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName
  SPCRDFG_CRDPRFG_CloudBuildTriggerBucketName                              = var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerBucketName
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
  SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationChannelId                 = var.SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationChannelId
  SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationRateLimit                 = var.SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyNotificationRateLimit
  SPCRDFG_CRDPRFG_CloudRunAlertPolicyAutoClose                             = var.SIBS_SPCRDFG_CRDPRFG_CloudRunAlertPolicyAutoClose
  SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent      = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent             = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  SPCRDFG_CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels             = var.SIBS_SPCRDFG_CRDPRFG_CloudRunInfraAlertPolicyNotificationChannels
  additionalLabels                                                         = var.additionalLabels
  SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent         = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent                = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent
  SPCRDFG_CRDPFG_SecretVersionSecretData                                   = "{\"SECRET_NAME\":\"${module.SWV_Prod.SWV_SecretArn}\",\"AWS_ACCESS_KEY_ID\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeyId}\",\"AWS_SECRET_ACCESS_KEY\":\"${module.IUWPAKSMS.IUWPAKSMS_IamAccessKeySecret}\"}"
  SPCRDFG_CRDPFG_SecretVersionEnabled                                      = var.SIBS_SPCRDFG_CRDPFG_SecretVersionEnabled
  SPCRDFG_CRDPFG_SecretVersionDeletionPolicy                               = var.SIBS_SPCRDFG_CRDPFG_SecretVersionDeletionPolicy
  SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountDisabled                   = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountDisabled
  SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists  = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists
  SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage                                = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerRoleStage
  SPCRDFG_CRDPFG_CloudBuildTriggerYamlPath                                 = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerYamlPath
  SPCRDFG_CRDPFG_CloudBuildTriggerBranchName                               = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerBranchName
  SPCRDFG_CRDPFG_CloudBuildTriggerBucketName                               = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerBucketName
  SPCRDFG_CRDPFG_CloudRunConcurrentRequests                                = var.SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests
  SPCRDFG_CRDPFG_CloudRunRequestsTimeout                                   = var.SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout
  SPCRDFG_CRDPFG_CloudRunPortNumber                                        = var.SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber
  SPCRDFG_CRDPFG_CloudRunMinInstances                                      = var.SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances
  SPCRDFG_CRDPFG_CloudRunMaxInstances                                      = var.SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances
  SPCRDFG_CRDPFG_CloudRunVpcConnector                                      = var.SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector
  SPCRDFG_CRDPFG_CloudRunNumberOfVcpus                                     = var.SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus
  SPCRDFG_CRDPFG_CloudRunAmountOfMemory                                    = var.SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory
  SPCRDFG_CRDPFG_CloudRunEnvVariableName                                   = var.SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName
  SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions                  = var.SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions
  SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationChannelId                  = var.SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationChannelId
  SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationRateLimit                  = var.SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyNotificationRateLimit
  SPCRDFG_CRDPFG_CloudRunAlertPolicyAutoClose                              = var.SIBS_SPCRDFG_CRDPFG_CloudRunAlertPolicyAutoClose
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent       = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent
  SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent              = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent
  SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels              = var.SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent          = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent
  SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent                 = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent
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
  creator                                 = var.createdBy
  deployedDate                            = var.deployedDate
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
  IUWPAKSMS_IamAccessKeyPgpKey         = var.SIBS_IUWPAKSMS_IamAccessKeyPgpKey
  IUWPAKSMS_IamAccessKeyStatus         = var.SIBS_IUWPAKSMS_IamAccessKeyStatus
  IUWPAKSMS_SecretDescription          = var.SIBS_IUWPAKSMS_SecretDescription
  IUWPAKSMS_SecretKmsKeyId             = var.SIBS_IUWPAKSMS_SecretKmsKeyId
  IUWPAKSMS_SecretNamePrefix           = var.SIBS_IUWPAKSMS_SecretNamePrefix
  IUWPAKSMS_SecretPolicy               = var.SIBS_IUWPAKSMS_SecretPolicy
  IUWPAKSMS_SecretRecoveryWindowInDays = var.SIBS_IUWPAKSMS_SecretRecoveryWindowInDays
  IUWPAKSMS_SecretReplica              = var.SIBS_IUWPAKSMS_SecretReplica
  IUWPAKSMS_SecretForceSecretOverwrite = var.SIBS_IUWPAKSMS_SecretForceSecretOverwrite
  IUWPAKSMS_SecretVersionSecretString  = var.SIBS_IUWPAKSMS_SecretVersionSecretString
  IUWPAKSMS_SecretVersionSecretBinary  = var.SIBS_IUWPAKSMS_SecretVersionSecretBinary
  IUWPAKSMS_SecretVersionStages        = var.SIBS_IUWPAKSMS_SecretVersionStages
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
  creator                                      = var.createdBy
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
  SWV_SecretKmsKeyId             = var.SIBS_SWV_Staging_SecretKmsKeyId
  resourceName                   = "${var.resourceName}-staging"
  SWV_SecretPolicy               = var.SIBS_SWV_Staging_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.SIBS_SWV_Staging_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.SIBS_SWV_Staging_SecretReplica
  SWV_SecretForceSecretOverwrite = var.SIBS_SWV_Staging_SecretForceSecretOverwrite
  projectName                    = var.projectName
  creator                        = var.createdBy
  deployedDate                   = var.deployedDate
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString = merge({
    S3_BUCKET = module.BWV.BWV_S3BucketName
  }, var.SIBS_SWV_Staging_SecretVersionSecretString)
  SWV_SecretVersionSecretBinary = var.SIBS_SWV_Staging_SecretVersionSecretBinary
  SWV_SecretVersionStages       = var.SIBS_SWV_Staging_SecretVersionStages
}

#---

module "SWV_Prod" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretKmsKeyId             = var.SIBS_SWV_Prod_SecretKmsKeyId
  resourceName                   = "${var.resourceName}-prod"
  SWV_SecretPolicy               = var.SIBS_SWV_Prod_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.SIBS_SWV_Prod_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.SIBS_SWV_Prod_SecretReplica
  SWV_SecretForceSecretOverwrite = var.SIBS_SWV_Prod_SecretForceSecretOverwrite
  projectName                    = var.projectName
  creator                        = var.createdBy
  deployedDate                   = var.deployedDate
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString = merge({
    S3_BUCKET = module.BWV.BWV_S3BucketName
  }, var.SIBS_SWV_Prod_SecretVersionSecretString)
  SWV_SecretVersionSecretBinary = var.SIBS_SWV_Prod_SecretVersionSecretBinary
  SWV_SecretVersionStages       = var.SIBS_SWV_Prod_SecretVersionStages
}

#---
