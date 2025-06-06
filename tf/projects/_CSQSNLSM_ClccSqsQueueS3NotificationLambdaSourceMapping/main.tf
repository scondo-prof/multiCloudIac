
module "CLCC" {
  source                                                  = "../_CLCC_containerLambdaCiCd"
  awsRegion                                               = var.awsRegion
  resourceName                                            = var.resourceName
  CLCC_CECC_EcrRepositoryEncryptionConfiguration          = var.CSQSNLSM_CLCC_CECC_EcrRepositoryEncryptionConfiguration
  CLCC_CECC_EcrRepositoryForceDelete                      = var.CSQSNLSM_CLCC_CECC_EcrRepositoryForceDelete
  CLCC_CECC_EcrRepositoryImageTagMutability               = var.CSQSNLSM_CLCC_CECC_EcrRepositoryImageTagMutability
  CLCC_CECC_EcrRepositoryImageScanningConfiguration       = var.CSQSNLSM_CLCC_CECC_EcrRepositoryImageScanningConfiguration
  projectName                                             = var.projectName
  createdBy                                               = var.createdBy
  deployedDate                                            = var.deployedDate
  tfModule                                                = var.tfModule
  additionalTags                                          = var.additionalTags
  CLCC_CECC_CodebuildProjectArtifactsIdentifier           = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsIdentifier
  CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess    = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess
  CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled   = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled
  CLCC_CECC_CodebuildProjectArtifactsLocation             = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsLocation
  CLCC_CECC_CodebuildProjectArtifactsName                 = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsName
  CLCC_CECC_CodebuildProjectArtifactsNamespaceType        = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsNamespaceType
  CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName
  CLCC_CECC_CodebuildProjectArtifactsPackaging            = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPackaging
  CLCC_CECC_CodebuildProjectArtifactsPath                 = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsPath
  CLCC_CECC_CodebuildProjectArtifactsType                 = var.CSQSNLSM_CLCC_CECC_CodebuildProjectArtifactsType
  CLCC_CECC_CodebuildProjectEnvironmentCertificate        = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentCertificate
  CLCC_CECC_CodebuildProjectEnvironmentComputeType        = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentComputeType
  # CLCC_CECC_CodebuildProjectEnvironmentFleet                    = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentFleet
  awsAccountId                                                  = var.awsAccountId
  codebuildProjectEcrRepoImageTag                               = var.codebuildProjectEcrRepoImageTag
  CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariable      = var.CSQSNLSM_CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariable
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
  CLCC_CECC_CodebuildProjectCloudwatchLogsStatus                = var.CSQSNLSM_CLCC_CECC_CodebuildProjectCloudwatchLogsStatus
  CLCC_CECC_CodebuildProjectVisibility                          = var.CSQSNLSM_CLCC_CECC_CodebuildProjectVisibility
  CLCC_CECC_CodebuildProjectResourceAccessRole                  = var.CSQSNLSM_CLCC_CECC_CodebuildProjectResourceAccessRole
  CLCC_CECC_CodebuildProjectQueuedTimeout                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectQueuedTimeout
  CLCC_CECC_CodebuildProjectSecondaryArtifacts                  = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSecondaryArtifacts
  CLCC_CECC_CodebuildProjectSecondarySources                    = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSecondarySources
  CLCC_CECC_CodebuildProjectSecondarySourceVersion              = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSecondarySourceVersion
  CLCC_CECC_CodebuildProjectSourceVersion                       = var.CSQSNLSM_CLCC_CECC_CodebuildProjectSourceVersion
  CLCC_CECC_CodebuildProjectVpcConfig                           = var.CSQSNLSM_CLCC_CECC_CodebuildProjectVpcConfig
  CLCC_CECC_CodebuildCredentialsAuthType                        = var.CSQSNLSM_CLCC_CECC_CodebuildCredentialsAuthType
  CLCC_CECC_CodebuildCredentialsServerType                      = var.CSQSNLSM_CLCC_CECC_CodebuildCredentialsServerType
  CLCC_CECC_CodebuildCredentialsToken                           = var.CSQSNLSM_CLCC_CECC_CodebuildCredentialsToken
  CLCC_CECC_CodebuildCredentialsUserName                        = var.CSQSNLSM_CLCC_CECC_CodebuildCredentialsUserName
  CLCC_CECC_CodebuildWebhookBuildType                           = var.CSQSNLSM_CLCC_CECC_CodebuildWebhookBuildType
  CLCC_CECC_CodebuildWebhookBranchFilter                        = var.CSQSNLSM_CLCC_CECC_CodebuildWebhookBranchFilter
  CLCC_CECC_CodebuildWebhookFilterGroup                         = var.CSQSNLSM_CLCC_CECC_CodebuildWebhookFilterGroup
  CLCC_CECC_CodebuildWebhookScopeConfiguration                  = var.CSQSNLSM_CLCC_CECC_CodebuildWebhookScopeConfiguration
  CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion                = var.CSQSNLSM_CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion
  CLCC_CECC_CodebuildRoleAssumeRolePolicy                       = var.CSQSNLSM_CLCC_CECC_CodebuildRoleAssumeRolePolicy
  CLCC_CECC_CodebuildRoleDescription                            = var.CSQSNLSM_CLCC_CECC_CodebuildRoleDescription
  CLCC_CECC_CodebuildRoleForceDetatchPolicies                   = var.CSQSNLSM_CLCC_CECC_CodebuildRoleForceDetatchPolicies
  CLCC_CECC_CodebuildRoleMaxSessionDuration                     = var.CSQSNLSM_CLCC_CECC_CodebuildRoleMaxSessionDuration
  CLCC_CECC_CodebuildRoleNamePrefix                             = var.CSQSNLSM_CLCC_CECC_CodebuildRoleNamePrefix
  CLCC_CECC_CodebuildRolePath                                   = var.CSQSNLSM_CLCC_CECC_CodebuildRolePath
  CLCC_CECC_CodebuildRolePermissionsBoundary                    = var.CSQSNLSM_CLCC_CECC_CodebuildRolePermissionsBoundary
  CLCC_CECC_CodebuildRolePolicyDescription                      = var.CSQSNLSM_CLCC_CECC_CodebuildRolePolicyDescription
  CLCC_CECC_CodebuildRolePolicyNamePrefix                       = var.CSQSNLSM_CLCC_CECC_CodebuildRolePolicyNamePrefix
  CLCC_CECC_CodebuildRolePolicyPath                             = var.CSQSNLSM_CLCC_CECC_CodebuildRolePolicyPath
  CLCC_CECC_CodebuildRolePolicyVersion                          = var.CSQSNLSM_CLCC_CECC_CodebuildRolePolicyVersion
  CLCC_CECC_CodebuildRolePolicyDocumentStatements               = var.CSQSNLSM_CLCC_CECC_CodebuildRolePolicyDocumentStatements
  CLCC_CECC_CodebuildLogGroupNamePrefix                         = var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupNamePrefix
  CLCC_CECC_CodebuildLogGroupSkipDestroy                        = var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupSkipDestroy
  CLCC_CECC_CodebuildLogGroupClass                              = var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupClass
  CLCC_CECC_CodebuildLogGroupRetentionInDays                    = var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupRetentionInDays
  CLCC_CECC_CodebuildLogGroupKmsKeyId                           = var.CSQSNLSM_CLCC_CECC_CodebuildLogGroupKmsKeyId
  CLCC_CECC_CodebuildRoleEcrPolicyDescription                   = var.CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyDescription
  CLCC_CECC_CodebuildRoleEcrPolicyNamePrefix                    = var.CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyNamePrefix
  CLCC_CECC_CodebuildRoleEcrPolicyPath                          = var.CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyPath
  CLCC_CECC_CodebuildRoleEcrPolicyVersion                       = var.CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyVersion
  CLCC_CECC_CodebuildRoleEcrPolicyDocumentStatements            = var.CSQSNLSM_CLCC_CECC_CodebuildRoleEcrPolicyDocumentStatements
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
  CLCC_LFWLGSAR_LambdaGenericPolicyDescription                  = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyDescription
  CLCC_LFWLGSAR_LambdaGenericPolicyNamePrefix                   = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyNamePrefix
  CLCC_LFWLGSAR_LambdaGenericPolicyPath                         = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyPath
  CLCC_LFWLGSAR_LambdaGenericPolicyVersion                      = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyVersion
  CLCC_LFWLGSAR_LambdaGenericPolicyDocumentStatements = concat([{
    Action = [
      "sqs:ReceiveMessage",
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes"
    ]
    Effect = "Allow"
    Resource = [
      module.queueS3.queueArn
    ]
    Sid = "queueAccess"
  }], var.CSQSNLSM_CLCC_LFWLGSAR_LambdaGenericPolicyDocumentStatements)
  CLCC_LFWLGSAR_LambdaSecretDescription              = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretDescription
  CLCC_LFWLGSAR_LambdaSecretKmsKeyId                 = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretKmsKeyId
  CLCC_LFWLGSAR_LambdaSecretNamePrefix               = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretNamePrefix
  CLCC_LFWLGSAR_LambdaSecretPolicy                   = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicy
  CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays
  CLCC_LFWLGSAR_LambdaSecretReplica                  = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretReplica
  CLCC_LFWLGSAR_LambdaSecretForceSecretOverwrite     = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretForceSecretOverwrite
  CLCC_LFWLGSAR_LambdaSecretVersionSecretString      = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretVersionSecretString
  CLCC_LFWLGSAR_LambdaSecretVersionSecretBinary      = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretVersionSecretBinary
  CLCC_LFWLGSAR_LambdaSecretVersionStages            = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretVersionStages
  CLCC_LFWLGSAR_LambdaSecretPolicyDescription        = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyDescription
  CLCC_LFWLGSAR_LambdaSecretPolicyNamePrefix         = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyNamePrefix
  CLCC_LFWLGSAR_LambdaSecretPolicyPath               = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyPath
  CLCC_LFWLGSAR_LambdaSecretPolicyVersion            = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyVersion
  CLCC_LFWLGSAR_LambdaSecretPolicyDocumentStatements = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaSecretPolicyDocumentStatements
  CLCC_LFWLGSAR_LambdaLogGroupNamePrefix             = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupNamePrefix
  CLCC_LFWLGSAR_LambdaLogGroupSkipDestroy            = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupSkipDestroy
  CLCC_LFWLGSAR_LambdaLogGroupClass                  = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupClass
  CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays        = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays
  CLCC_LFWLGSAR_LambdaLogGroupKmsKeyId               = var.CSQSNLSM_CLCC_LFWLGSAR_LambdaLogGroupKmsKeyId
  CLCC_IamPolicyUpdateLambdaDescription              = var.CSQSNLSM_CLCC_IamPolicyUpdateLambdaDescription
  CLCC_IamPolicyUpdateLambdaNamePrefix               = var.CSQSNLSM_CLCC_IamPolicyUpdateLambdaNamePrefix
  CLCC_IamPolicyUpdateLambdaPath                     = var.CSQSNLSM_CLCC_IamPolicyUpdateLambdaPath
  CLCC_IamPolicyUpdateLambdaVersion                  = var.CSQSNLSM_CLCC_IamPolicyUpdateLambdaVersion
  CLCC_IamPolicyUpdateLambdaDocumentStatements       = var.CSQSNLSM_CLCC_IamPolicyUpdateLambdaDocumentStatements
}

#---

module "queueS3" {
  source                            = "../../aws/sqs/genericQueue"
  awsRegion                         = var.awsRegion
  queueContentBasedDeduplication    = var.CSQSNLSM_QueueS3ContentBasedDeduplication
  queueDeduplicationScope           = var.CSQSNLSM_QueueS3DeduplicationScope
  queueDelaySeconds                 = var.CSQSNLSM_QueueS3DelaySeconds
  queueFifoQueue                    = var.CSQSNLSM_QueueS3FifoQueue
  queueFifoThroughputLimit          = var.CSQSNLSM_QueueS3FifoThroughputLimit
  queueKmsDataKeyReusePeriodSeconds = var.CSQSNLSM_QueueS3KmsDataKeyReusePeriodSeconds
  queueKmsMasterKeyId               = var.CSQSNLSM_QueueS3KmsMasterKeyId
  queueMaxMessageSize               = var.CSQSNLSM_QueueS3MaxMessageSize
  queueMessageRetentionSeconds      = var.CSQSNLSM_QueueS3MessageRetentionSeconds
  queueName                         = var.CSQSNLSM_QueueS3Name
  queueNamePrefix                   = "${var.resourceName}-queue"
  queuePolicyDocumentStatements     = var.CSQSNLSM_QueueS3PolicyDocumentStatements
  queueRecieveWaitTimeSeconds       = var.CSQSNLSM_QueueS3RecieveWaitTimeSeconds
  queueRedriveAllowPolicy           = var.CSQSNLSM_QueueS3RedriveAllowPolicy
  queueRedrivePolicy                = var.CSQSNLSM_QueueS3RedrivePolicy
  queueSqsManagedSseEnabled         = var.CSQSNLSM_QueueS3SqsManagedSseEnabled
  projectName                       = var.projectName
  createdBy                         = var.createdBy
  deployedDate                      = var.deployedDate
  tfModule                          = var.tfModule
  additionalTags                    = var.additionalTags
  queueVisibilityTimeoutSeconds     = var.CSQSNLSM_QueueS3VisibilityTimeoutSeconds
}

#---

module "queuePolicyS3Access" {
  source    = "../../aws/sqs/genericQueuePolicy"
  awsRegion = var.awsRegion
  queuePolicyDocumentStatements = concat([{
    Action = ["sqs:SendMessage"]
    Condition = {
      "ArnEquals" = {
        "aws:SourceArn" = var.CSQSNLSM_QueuePolicyS3AccessBucketArn
      }
    }
    Effect = "Allow"
    Principal = {
      "Service" = ["s3.amazonaws.com"]
    }
    Resource = [module.queueS3.queueArn]
    Sid      = "s3Access"
  }], var.CSQSNLSM_QueuePolicyS3AccessDocumentStatements)
  queuePolicyQueueUrl = module.queueS3.queueUrl
}

#---

module "bucketNotificationToQueue" {
  source                   = "../../aws/s3/genericBucketNotification"
  awsRegion                = var.awsRegion
  bucketNotificationBucket = var.CSQSNLSM_BucketNotificationToQueueBucket
  bucketNotificationQueue = merge({
    queue_arn = module.queueS3.queueArn
    events    = concat(["s3:ObjectCreated:*"], var.CSQSNLSM_BucketNotificationToQueueEvents)
  }, var.CSQSNLSM_BucketNotificationToQueueQueue)
}

#---

module "eventSourceMappingToQueue" {
  source                                                = "../../aws/lambda/genericLambdaEventSourceMapping"
  awsRegion                                             = var.awsRegion
  eventSourceMappingAmazonManagedKafkaEventSourceConfig = var.CSQSNLSM_EventSourceMappingToQueueAmazonManagedKafkaEventSourceConfig
  eventSourceMappingBatchSize                           = var.CSQSNLSM_EventSourceMappingToQueueBatchSize
  eventSourceMappingBisectBatchOnFunctionError          = var.CSQSNLSM_EventSourceMappingToQueueBisectBatchOnFunctionError
  eventSourceMappingDestinationConfig                   = var.CSQSNLSM_EventSourceMappingToQueueDestinationConfig
  eventSourceMappingDocumentDbEventSourceConfig         = var.CSQSNLSM_EventSourceMappingToQueueDocumentDbEventSourceConfig
  eventSourceMappingEnabled                             = var.CSQSNLSM_EventSourceMappingToQueueEnabled
  eventSourceMappingEventSourceArn                      = module.queueS3.queueArn
  eventSourceMappingFilterCriteria                      = var.CSQSNLSM_EventSourceMappingToQueueFilterCriteria
  eventSourceMappingFunctionName                        = module.CLCC.CLCC_LFWLGSAR_LambdaFunctionName
  eventSourceMappingFunctionResponseTypes               = var.CSQSNLSM_EventSourceMappingToQueueFunctionResponseTypes
  eventSourceMappingKmsKeyArn                           = var.CSQSNLSM_EventSourceMappingToQueueKmsKeyArn
  eventSourceMappingMaximumBatchingWindowInSeconds      = var.CSQSNLSM_EventSourceMappingToQueueMaximumBatchingWindowInSeconds
  eventSourceMappingMaximumRecordAgeInSeconds           = var.CSQSNLSM_EventSourceMappingToQueueMaximumRecordAgeInSeconds
  eventSourceMappingMaximumRetryAttempts                = var.CSQSNLSM_EventSourceMappingToQueueMaximumRetryAttempts
  eventSourceMappingMetricsConfig                       = var.CSQSNLSM_EventSourceMappingToQueueMetricsConfig
  eventSourceMappingParallelizationFactor               = var.CSQSNLSM_EventSourceMappingToQueueParallelizationFactor
  eventSourceMappingProvisionedPollerConfig             = var.CSQSNLSM_EventSourceMappingToQueueProvisionedPollerConfig
  eventSourceMappingQueues                              = var.CSQSNLSM_EventSourceMappingToQueueQueues
  eventSourceMappingScalingConfig                       = var.CSQSNLSM_EventSourceMappingToQueueScalingConfig
  eventSourceMappingSelfManagedEventSource              = var.CSQSNLSM_EventSourceMappingToQueueSelfManagedEventSource
  eventSourceMappingSelfManagedKafkaEventSourceConfig   = var.CSQSNLSM_EventSourceMappingToQueueSelfManagedKafkaEventSourceConfig
  eventSourceMappingSourceAccessConfiguration           = var.CSQSNLSM_EventSourceMappingToQueueSourceAccessConfiguration
  eventSourceMappingStartingPosition                    = var.CSQSNLSM_EventSourceMappingToQueueStartingPosition
  eventSourceMappingStartingPositionTimestamp           = var.CSQSNLSM_EventSourceMappingToQueueStartingPositionTimestamp
  projectName                                           = var.projectName
  createdBy                                             = var.createdBy
  deployedDate                                          = var.deployedDate
  tfModule                                              = var.tfModule
  additionalTags                                        = var.additionalTags
  eventSourceMappingTopics                              = var.CSQSNLSM_EventSourceMappingToQueueTopics
  eventSourceMappingTumblingWindowInSeconds             = var.CSQSNLSM_EventSourceMappingToQueueTumblingWindowInSeconds
}

#---