
module "CLCC" {
  source                                                        = "../_CLCC_containerLambdaCiCd"
  awsRegion                                                     = var.awsRegion
  resourceName                                                  = var.resourceName
  CLCC_CECC_EcrRepositoryEncryptionConfiguration                = var.CSQSNLSM_CLCC_CECC_EcrRepositoryEncryptionConfiguration
  CLCC_CECC_EcrRepositoryForceDelete                            = var.CSQSNLSM_CLCC_CECC_EcrRepositoryForceDelete
  CLCC_CECC_EcrRepositoryImageTagMutability                     = var.CSQSNLSM_CLCC_CECC_EcrRepositoryImageTagMutability
  CLCC_CECC_EcrRepositoryImageScanningConfiguration             = var.CSQSNLSM_CLCC_CECC_EcrRepositoryImageScanningConfiguration
  projectName                                                   = var.projectName
  creator                                                       = var.createdBy
  deployedDate                                                  = var.deployedDate
  additionalTags                                                = var.additionalTags
  CLCC_CECC_CodebuildProjectArtifactsIdentifier                 = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsIdentifier
  CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess          = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess
  CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled         = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled
  CLCC_CECC_CodebuildProjectArtifactsLocation                   = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsLocation
  CLCC_CECC_CodebuildProjectArtifactsName                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsName
  CLCC_CECC_CodebuildProjectArtifactsNamespaceType              = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsNamespaceType
  CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName
  CLCC_CECC_CodebuildProjectArtifactsPackaging                  = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPackaging
  CLCC_CECC_CodebuildProjectArtifactsPath                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPath
  CLCC_CECC_CodebuildProjectArtifactsType                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsType
  CLCC_CECC_CodebuildProjectEnvironmentCertificate              = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentCertificate
  CLCC_CECC_CodebuildProjectEnvironmentComputeType              = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentComputeType
  CLCC_CECC_CodebuildProjectEnvironmentFleet                    = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentFleet
  awsAccountId                                                  = var.awsAccountId
  codebuildProjectEcrRepoImageTag                               = var.codebuildProjectEcrRepoImageTag
  CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariables     = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariables
  CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType
  CLCC_CECC_CodebuildProjectEnvironmentImage                    = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentImage
  CLCC_CECC_CodebuildProjectEnvironmentPrivilegedMode           = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentPrivilegedMode
  CLCC_CECC_CodebuildProjectEnvironmentRegistryCredential       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentRegistryCredential
  CLCC_CECC_CodebuildProjectEnvironmentType                     = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentType
  CLCC_CECC_CodebuildProjectSourceBuildspec                     = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceBuildspec
  CLCC_CECC_CodebuildProjectSourceGitCloneDepth                 = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceGitCloneDepth
  CLCC_CECC_CodebuildProjectSourceGitSubmodulesConfig           = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceGitSubmodulesConfig
  CLCC_CECC_CodebuildProjectSourceInsecureSsl                   = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceInsecureSsl
  CLCC_CECC_CodebuildProjectSourceLocation                      = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceLocation
  CLCC_CECC_CodebuildProjectSourceReportBuildStatus             = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceReportBuildStatus
  CLCC_CECC_CodebuildProjectSourceBuildStatusConfig             = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceBuildStatusConfig
  CLCC_CECC_CodebuildProjectSourceType                          = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceType
  CLCC_CECC_CodebuildProjectBadgeEnabled                        = var.CSQSNLSM_CLCC_CECC_CodebuildProjectBadgeEnabled
  CLCC_CECC_CodebuildProjectBuildBatchConfig                    = var.CSQSNLSM_CLCC_CECC_CodebuildProjectBuildBatchConfig
  CLCC_CECC_CodebuildProjectBuildTimeout                        = var.CSQSNLSM_CLCC_CECC_CodebuildProjectBuildTimeout
  CLCC_CECC_CodebuildProjectCache                               = var.CSQSNLSM_CLCC_CECC_CodebuildProjectCache
  CLCC_CECC_CodebuildProjectConcurrentBuildLimit                = var.CSQSNLSM_CLCC_CECC_CodebuildProjectConcurrentBuildLimit
  CLCC_CECC_CodebuildProjectDescription                         = var.CSQSNLSM_CLCC_CECC_CodebuildProjectDescription
  CLCC_CECC_CodebuildProjectFileSystemLocations                 = var.CSQSNLSM_CLCC_CECC_CodebuildProjectFileSystemLocations
  CLCC_CECC_CodebuildProjectEncryptionKey                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEncryptionKey
  CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStatus          = var.CSQSNLSM_CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStatus
  CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStreamName      = var.CSQSNLSM_CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStreamName
  CLCC_CECC_CodebuildProjectS3LogsConfig                        = var.CSQSNLSM_CLCC_CECC_CodebuildProjectS3LogsConfig
  CLCC_CECC_CodebuildProjectVisibility                          = var.CSQSNLSM_CLCC_CECC_CodebuildProjectVisibility
  CLCC_CECC_CodebuildProjectResourceAccessRole                  = var.CSQSNLSM_CLCC_CECC_CodebuildProjectResourceAccessRole
  CLCC_CECC_CodebuildProjectQueuedTimeout                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectQueuedTimeout
  CLCC_CECC_CodebuildProjectSecondaryArtifacts                  = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSecondaryArtifacts
  CLCC_CECC_CodebuildProjectSecondarySources                    = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSecondarySources
  CLCC_CECC_CodebuildProjectSecondarySourceVersion              = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSecondarySourceVersion
  CLCC_CECC_CodebuildProjectSourceVersion                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceVersion
  CLCC_CECC_CodebuildProjectVpcConfig                           = var.CSQSNLSM_CLCC_CECC_CodebuildProjectVpcConfig
  CLCC_CECC_CredentialsAuthType                                 = var.CSQSNLSM_CLCC_CECC_CredentialsAuthType
  CLCC_CECC_CredentialsServerType                               = var.CSQSNLSM_CLCC_CECC_CredentialsServerType
  CLCC_CECC_CredentialsToken                                    = var.CSQSNLSM_CLCC_CECC_CredentialsToken
  CLCC_CECC_CredentialsUserName                                 = var.CSQSNLSM_CLCC_CECC_CredentialsUserName
  CLCC_CECC_WebhookBuildType                                    = var.CSQSNLSM_CLCC_CECC_WebhookBuildType
  CLCC_CECC_WebhookBranchFilter                                 = var.CSQSNLSM_CLCC_CECC_WebhookBranchFilter
  CLCC_CECC_WebhookFilterGroup                                  = var.CSQSNLSM_CLCC_CECC_WebhookFilterGroup
  CLCC_CECC_WebhookScopeConfiguration                           = var.CSQSNLSM_CLCC_CECC_WebhookScopeConfiguration
  CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion                = var.CSQSNLSM_CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion
  CLCC_CECC_CodebuildRoleAssumeRolePolicy                       = var.CSQSNLSM_CLCC_CECC_CodebuildRoleAssumeRolePolicy
  CLCC_CECC_CodebuildRoleDescription                            = var.CSQSNLSM_CLCC_CECC_CodebuildRoleDescription
  CLCC_CECC_CodebuildRoleForceDetatchPolicies                   = var.CSQSNLSM_CLCC_CECC_CodebuildRoleForceDetatchPolicies
  CLCC_CECC_CodebuildRoleMaxSessionDuration                     = var.CSQSNLSM_CLCC_CECC_CodebuildRoleMaxSessionDuration
  CLCC_CECC_CodebuildRoleNamePrefix                             = var.CSQSNLSM_CLCC_CECC_CodebuildRoleNamePrefix
  CLCC_CECC_CodebuildRolePath                                   = var.CSQSNLSM_CLCC_CECC_CodebuildRolePath
  CLCC_CECC_CodebuildRolePermissionsBoundary                    = var.CSQSNLSM_CLCC_CECC_CodebuildRolePermissionsBoundary
  CLCC_CECC_CodebuildPolicyDescription                          = var.CSQSNLSM_CLCC_CECC_CodebuildPolicyDescription
  CLCC_CECC_CodebuildPolicyNamePrefix                           = var.CSQSNLSM_CLCC_CECC_CodebuildPolicyNamePrefix
  CLCC_CECC_CodebuildPolicyPath                                 = var.CSQSNLSM_CLCC_CECC_CodebuildPolicyPath
  CLCC_CECC_CodebuildPolicyVersion                              = var.CSQSNLSM_CLCC_CECC_CodebuildPolicyVersion
  CLCC_CECC_CodebuildPolicyDocumentAdditionalStatements         = var.CSQSNLSM_CLCC_CECC_CodebuildPolicyDocumentAdditionalStatements
  CLCC_CECC_LogGroupNamePrefix                                  = var.CSQSNLSM_CLCC_CECC_LogGroupNamePrefix
  CLCC_CECC_LogGroupSkipDestroy                                 = var.CSQSNLSM_CLCC_CECC_LogGroupSkipDestroy
  CLCC_CECC_LogGroupClass                                       = var.CSQSNLSM_CLCC_CECC_LogGroupClass
  CLCC_CECC_LogGroupRetentionInDays                             = var.CSQSNLSM_CLCC_CECC_LogGroupRetentionInDays
  CLCC_CECC_LogGroupKmsKeyId                                    = var.CSQSNLSM_CLCC_CECC_LogGroupKmsKeyId
  CLCC_CECC_EcrAccessPolicyDescription                          = var.CSQSNLSM_CLCC_CECC_EcrAccessPolicyDescription
  CLCC_CECC_EcrAccessPolicyNamePrefix                           = var.CSQSNLSM_CLCC_CECC_EcrAccessPolicyNamePrefix
  CLCC_CECC_EcrAccessPolicyPath                                 = var.CSQSNLSM_CLCC_CECC_EcrAccessPolicyPath
  CLCC_CECC_EcrAccessPolicyVersion                              = var.CSQSNLSM_CLCC_CECC_EcrAccessPolicyVersion
  CLCC_CECC_EcrAccessPolicyDocumentAdditionalStatements         = var.CSQSNLSM_CLCC_CECC_EcrAccessPolicyDocumentAdditionalStatements
  CLCC_UpdateLambdaPolicyDescription                            = var.CSQSNLSM_CLCC_UpdateLambdaPolicyDescription
  CLCC_UpdateLambdaPolicyNamePrefix                             = var.CSQSNLSM_CLCC_UpdateLambdaPolicyNamePrefix
  CLCC_UpdateLambdaPolicyPath                                   = var.CSQSNLSM_CLCC_UpdateLambdaPolicyPath
  CLCC_UpdateLambdaPolicyVersion                                = var.CSQSNLSM_CLCC_UpdateLambdaPolicyVersion
  CLCC_UpdateLambdaPolicyDocumentStatements                     = var.CSQSNLSM_CLCC_UpdateLambdaPolicyDocumentStatements
  CLCC_LFWLGSAR_LambdaFunctionArchitectures                     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionArchitectures
  CLCC_LFWLGSAR_LambdaFunctionCodeSigningConfigArn              = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionCodeSigningConfigArn
  CLCC_LFWLGSAR_LambdaFunctionDeadLetterConfig                  = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionDeadLetterConfig
  CLCC_LFWLGSAR_LambdaFunctionDescription                       = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionDescription
  CLCC_LFWLGSAR_LambdaFunctionEnvironmentVariables              = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionEnvironmentVariables
  CLCC_LFWLGSAR_LambdaFunctionEphemeralStorage                  = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionEphemeralStorage
  CLCC_LFWLGSAR_LambdaFunctionFileSystemConfig                  = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionFileSystemConfig
  CLCC_LFWLGSAR_LambdaFunctionFilename                          = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionFilename
  CLCC_LFWLGSAR_LambdaFunctionHandler                           = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionHandler
  CLCC_LFWLGSAR_LambdaFunctionImageConfig                       = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionImageConfig
  CLCC_LFWLGSAR_LambdaFunctionKmsKeyArn                         = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionKmsKeyArn
  CLCC_LFWLGSAR_LambdaFunctionLayers                            = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionLayers
  CLCC_LFWLGSAR_LambdaFunctionLoggingConfig                     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionLoggingConfig
  CLCC_LFWLGSAR_LambdaFunctionMemorySize                        = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionMemorySize
  CLCC_LFWLGSAR_LambdaFunctionPackageType                       = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPackageType
  CLCC_LFWLGSAR_LambdaFunctionPublish                           = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionPublish
  CLCC_LFWLGSAR_LambdaFunctionReservedConcurrentExecutions      = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionReservedConcurrentExecutions
  CLCC_LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy    = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy
  CLCC_LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds       = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds
  CLCC_LFWLGSAR_LambdaFunctionRuntime                           = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRuntime
  CLCC_LFWLGSAR_LambdaFunctionS3Bucket                          = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionS3Bucket
  CLCC_LFWLGSAR_LambdaFunctionS3Key                             = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionS3Key
  CLCC_LFWLGSAR_LambdaFunctionS3ObjectVersion                   = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionS3ObjectVersion
  CLCC_LFWLGSAR_LambdaFunctionSkipDestroy                       = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionSkipDestroy
  CLCC_LFWLGSAR_LambdaFunctionSourceCodeHash                    = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionSourceCodeHash
  CLCC_LFWLGSAR_LambdaFunctionSnapStart                         = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionSnapStart
  CLCC_LFWLGSAR_LambdaFunctionTimeout                           = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTimeout
  CLCC_LFWLGSAR_LambdaFunctionTracingConfig                     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionTracingConfig
  CLCC_LFWLGSAR_LambdaFunctionVpcConfig                         = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionVpcConfig
  CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion       = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion
  CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy              = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy
  CLCC_LFWLGSAR_LambdaFunctionRoleDescription                   = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleDescription
  CLCC_LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies          = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies
  CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration            = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration
  CLCC_LFWLGSAR_LambdaFunctionRoleNamePrefix                    = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRoleNamePrefix
  CLCC_LFWLGSAR_LambdaFunctionRolePath                          = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRolePath
  CLCC_LFWLGSAR_LambdaFunctionRolePermissionsBoundary           = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaFunctionRolePermissionsBoundary
  CLCC_LFWLGSAR_LambdaPolicyDescription                         = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaPolicyDescription
  CLCC_LFWLGSAR_LambdaPolicyNamePrefix                          = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaPolicyNamePrefix
  CLCC_LFWLGSAR_LambdaPolicyPath                                = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaPolicyPath
  CLCC_LFWLGSAR_LambdaPolicyVersion                             = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaPolicyVersion
  CLCC_LFWLGSAR_LambdaPolicyDocumentStatements = concat([{
    Action = [
      "sqs:ReceiveMessage",
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes"
    ]
    Effect = "Allow"
    Resource = [
      module.s3Queue.queueArn
    ]
    Sid = "queueAccess"
  }], var.CSQSNLSM_CLCC_LFWLGSAR_LambdaPolicyDocumentStatements)
  CLCC_LFWLGSAR_SecretDescription              = var.CSQSNLSM_CLCC_LFWLGSAR_SecretDescription
  CLCC_LFWLGSAR_SecretKmsKeyId                 = var.CSQSNLSM_CLCC_LFWLGSAR_SecretKmsKeyId
  CLCC_LFWLGSAR_SecretNamePrefix               = var.CSQSNLSM_CLCC_LFWLGSAR_SecretNamePrefix
  CLCC_LFWLGSAR_SecretPolicy                   = var.CSQSNLSM_CLCC_LFWLGSAR_SecretPolicy
  CLCC_LFWLGSAR_SecretRecoveryWindowInDays     = var.CSQSNLSM_CLCC_LFWLGSAR_SecretRecoveryWindowInDays
  CLCC_LFWLGSAR_SecretReplica                  = var.CSQSNLSM_CLCC_LFWLGSAR_SecretReplica
  CLCC_LFWLGSAR_SecretForceSecretOverwrite     = var.CSQSNLSM_CLCC_LFWLGSAR_SecretForceSecretOverwrite
  CLCC_LFWLGSAR_SecretVersionSecretString      = var.CSQSNLSM_CLCC_LFWLGSAR_SecretVersionSecretString
  CLCC_LFWLGSAR_SecretVersionSecretBinary      = var.CSQSNLSM_CLCC_LFWLGSAR_SecretVersionSecretBinary
  CLCC_LFWLGSAR_SecretVersionStages            = var.CSQSNLSM_CLCC_LFWLGSAR_SecretVersionStages
  CLCC_LFWLGSAR_SecretPolicyDescription        = var.CSQSNLSM_CLCC_LFWLGSAR_SecretPolicyDescription
  CLCC_LFWLGSAR_SecretPolicyNamePrefix         = var.CSQSNLSM_CLCC_LFWLGSAR_SecretPolicyNamePrefix
  CLCC_LFWLGSAR_SecretPolicyPath               = var.CSQSNLSM_CLCC_LFWLGSAR_SecretPolicyPath
  CLCC_LFWLGSAR_SecretPolicyVersion            = var.CSQSNLSM_CLCC_LFWLGSAR_SecretPolicyVersion
  CLCC_LFWLGSAR_SecretPolicyDocumentStatements = var.CSQSNLSM_CLCC_LFWLGSAR_SecretPolicyDocumentStatements
  CLCC_LFWLGSAR_LogGroupNamePrefix             = var.CSQSNLSM_CLCC_LFWLGSAR_LogGroupNamePrefix
  CLCC_LFWLGSAR_LogGroupSkipDestroy            = var.CSQSNLSM_CLCC_LFWLGSAR_LogGroupSkipDestroy
  CLCC_LFWLGSAR_LogGroupClass                  = var.CSQSNLSM_CLCC_LFWLGSAR_LogGroupClass
  CLCC_LFWLGSAR_LogGroupRetentionInDays        = var.CSQSNLSM_CLCC_LFWLGSAR_LogGroupRetentionInDays
  CLCC_LFWLGSAR_LogGroupKmsKeyId               = var.CSQSNLSM_CLCC_LFWLGSAR_LogGroupKmsKeyId
}

#---

module "s3Queue" {
  source                            = "../../aws/sqs/genericQueue"
  awsRegion                         = var.awsRegion
  queueContentBasedDeduplication    = var.CSQSNLSM_S3QueueContentBasedDeduplication
  queueDeduplicationScope           = var.CSQSNLSM_S3QueueDeduplicationScope
  queueDelaySeconds                 = var.CSQSNLSM_S3QueueDelaySeconds
  queueFifoQueue                    = var.CSQSNLSM_S3QueueFifoQueue
  queueFifoThroughputLimit          = var.CSQSNLSM_S3QueueFifoThroughputLimit
  queueKmsDataKeyReusePeriodSeconds = var.CSQSNLSM_S3QueueKmsDataKeyReusePeriodSeconds
  queueKmsMasterKeyId               = var.CSQSNLSM_S3QueueKmsMasterKeyId
  queueMaxMessageSize               = var.CSQSNLSM_S3QueueMaxMessageSize
  queueMessageRetentionSeconds      = var.CSQSNLSM_S3QueueMessageRetentionSeconds
  queueName                         = "${var.resourceName}-queue"
  queueNamePrefix                   = var.CSQSNLSM_S3QueueNamePrefix
  queuePolicyDocumentStatements     = var.CSQSNLSM_S3QueuePolicyDocumentStatements
  queueRecieveWaitTimeSeconds       = var.CSQSNLSM_S3QueueRecieveWaitTimeSeconds
  queueRedriveAllowPolicy           = var.CSQSNLSM_S3QueueRedriveAllowPolicy
  queueRedrivePolicy                = var.CSQSNLSM_S3QueueRedrivePolicy
  queueSqsManagedSseEnabled         = var.CSQSNLSM_S3QueueSqsManagedSseEnabled
  projectName                       = var.projectName
  createdBy                         = var.createdBy
  deployedDate                      = var.deployedDate
  tfModule                          = var.tfModule
  additionalTags                    = var.additionalTags
  queueVisibilityTimeoutSeconds     = var.CSQSNLSM_S3QueueVisibilityTimeoutSeconds
}

#---

module "externalS3QueuePolicy" {
  source    = "../../aws/sqs/genericQueuePolicy"
  awsRegion = var.awsRegion
  queuePolicyDocumentStatements = concat([{
    Action = ["sqs:SendMessage"]
    Condition = {
      "ArnEquals" = {
        "aws:SourceArn" = var.CSQSNLSM_ExternalS3QueuePolicyBucket
      }
    }
    Effect = "Allow"
    Principal = {
      "Service" = ["s3.amazonaws.com"]
    }
    Resource = [module.s3Queue.queueArn]
    Sid      = "s3Access"
  }], var.CSQSNLSM_ExternalS3QueuePolicyDocumentStatements)
  queuePolicyQueueUrl = module.s3Queue.queueUrl
}

#---

module "QueueBucketNotification" {
  source                   = "../../aws/s3/genericBucketNotification"
  awsRegion                = var.awsRegion
  bucketNotificationBucket = var.CSQSNLSM_QueueBucketNotificationBucket
  bucketNotificationQueue = merge({
    queue_arn = module.s3Queue.queueArn
    events    = concat(["s3:ObjectCreated:*"], var.CSQSNLSM_QueueBucketNotificationQueueEvents)
  }, var.CSQSNLSM_QueueBucketNotificationQueue)
}

#---

module "s3EventSourceMapping" {
  source                                                = "../../aws/lambda/genericLambdaEventSourceMapping"
  awsRegion                                             = var.awsRegion
  eventSourceMappingAmazonManagedKafkaEventSourceConfig = var.CSQSNLSM_S3EventSourceMappingAmazonManagedKafkaEventSourceConfig
  eventSourceMappingBatchSize                           = var.CSQSNLSM_S3EventSourceMappingBatchSize
  eventSourceMappingBisectBatchOnFunctionError          = var.CSQSNLSM_S3EventSourceMappingBisectBatchOnFunctionError
  eventSourceMappingDestinationConfig                   = var.CSQSNLSM_S3EventSourceMappingDestinationConfig
  eventSourceMappingDocumentDbEventSourceConfig         = var.CSQSNLSM_S3EventSourceMappingDocumentDbEventSourceConfig
  eventSourceMappingEnabled                             = var.CSQSNLSM_S3EventSourceMappingEnabled
  eventSourceMappingEventSourceArn                      = module.s3Queue.queueArn
  eventSourceMappingFilterCriteria                      = var.CSQSNLSM_S3EventSourceMappingFilterCriteria
  eventSourceMappingFunctionName                        = module.CLCC.CLCC_LFWLGSAR_LambdaFunctionName
  eventSourceMappingFunctionResponseTypes               = var.CSQSNLSM_S3EventSourceMappingFunctionResponseTypes
  eventSourceMappingKmsKeyArn                           = var.CSQSNLSM_S3EventSourceMappingKmsKeyArn
  eventSourceMappingMaximumBatchingWindowInSeconds      = var.CSQSNLSM_S3EventSourceMappingMaximumBatchingWindowInSeconds
  eventSourceMappingMaximumRecordAgeInSeconds           = var.CSQSNLSM_S3EventSourceMappingMaximumRecordAgeInSeconds
  eventSourceMappingMaximumRetryAttempts                = var.CSQSNLSM_S3EventSourceMappingMaximumRetryAttempts
  eventSourceMappingMetricsConfig                       = var.CSQSNLSM_S3EventSourceMappingMetricsConfig
  eventSourceMappingParallelizationFactor               = var.CSQSNLSM_S3EventSourceMappingParallelizationFactor
  eventSourceMappingProvisionedPollerConfig             = var.CSQSNLSM_S3EventSourceMappingProvisionedPollerConfig
  eventSourceMappingQueues                              = var.CSQSNLSM_S3EventSourceMappingQueues
  eventSourceMappingScalingConfig                       = var.CSQSNLSM_S3EventSourceMappingScalingConfig
  eventSourceMappingSelfManagedEventSource              = var.CSQSNLSM_S3EventSourceMappingSelfManagedEventSource
  eventSourceMappingSelfManagedKafkaEventSourceConfig   = var.CSQSNLSM_S3EventSourceMappingSelfManagedKafkaEventSourceConfig
  eventSourceMappingSourceAccessConfiguration           = var.CSQSNLSM_S3EventSourceMappingSourceAccessConfiguration
  eventSourceMappingStartingPosition                    = var.CSQSNLSM_S3EventSourceMappingStartingPosition
  eventSourceMappingStartingPositionTimestamp           = var.CSQSNLSM_S3EventSourceMappingStartingPositionTimestamp
  projectName                                           = var.projectName
  createdBy                                             = var.createdBy
  deployedDate                                          = var.deployedDate
  tfModule                                              = var.tfModule
  additionalTags                                        = var.additionalTags
  eventSourceMappingTopics                              = var.CSQSNLSM_S3EventSourceMappingTopics
  eventSourceMappingTumblingWindowInSeconds             = var.CSQSNLSM_S3EventSourceMappingTumblingWindowInSeconds
}

#---
