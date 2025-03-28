
    module "CLCC" {
  source = "../_CECC_codebuildEcrCiCd"
awsRegion = var.awsRegion
resourceName = var.resourceName
CECC_EcrRepositoryEncryptionConfiguration = var.CLCC_CECC_EcrRepositoryEncryptionConfiguration
CECC_EcrRepositoryForceDelete = var.CLCC_CECC_EcrRepositoryForceDelete
CECC_EcrRepositoryImageTagMutability = var.CLCC_CECC_EcrRepositoryImageTagMutability
CECC_EcrRepositoryImageScanningConfiguration = var.CLCC_CECC_EcrRepositoryImageScanningConfiguration
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
CECC_CodebuildProjectArtifactsIdentifier = var.CLCC_CECC_CodebuildProjectArtifactsIdentifier
CECC_CodebuildProjectArtifactsBucketOwnerAccess = var.CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess
CECC_CodebuildProjectArtifactsEncryptionDisabled = var.CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled
CECC_CodebuildProjectArtifactsLocation = var.CLCC_CECC_CodebuildProjectArtifactsLocation
CECC_CodebuildProjectArtifactsName = var.CLCC_CECC_CodebuildProjectArtifactsName
CECC_CodebuildProjectArtifactsNamespaceType = var.CLCC_CECC_CodebuildProjectArtifactsNamespaceType
CECC_CodebuildProjectArtifactsOverrideArtifactName = var.CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName
CECC_CodebuildProjectArtifactsPackaging = var.CLCC_CECC_CodebuildProjectArtifactsPackaging
CECC_CodebuildProjectArtifactsPath = var.CLCC_CECC_CodebuildProjectArtifactsPath
CECC_CodebuildProjectArtifactsType = var.CLCC_CECC_CodebuildProjectArtifactsType
CECC_CodebuildProjectEnvironmentCertificate = var.CLCC_CECC_CodebuildProjectEnvironmentCertificate
CECC_CodebuildProjectEnvironmentComputeType = var.CLCC_CECC_CodebuildProjectEnvironmentComputeType
# CECC_CodebuildProjectEnvironmentFleet = var.CLCC_CECC_CodebuildProjectEnvironmentFleet
awsAccountId = var.awsAccountId
codebuildProjectEcrRepoImageTag = var.codebuildProjectEcrRepoImageTag
CECC_CodebuildProjectEnvironmentEnvironmentVariable = var.CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariable
CECC_CodebuildProjectEnvironmentImagePullCredentialsType = var.CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType
CECC_CodebuildProjectEnvironmentImage = var.CLCC_CECC_CodebuildProjectEnvironmentImage
CECC_CodebuildProjectEnvironmentPrivilegedMode = var.CLCC_CECC_CodebuildProjectEnvironmentPrivilegedMode
CECC_CodebuildProjectEnvironmentRegistryCredential = var.CLCC_CECC_CodebuildProjectEnvironmentRegistryCredential
CECC_CodebuildProjectEnvironmentType = var.CLCC_CECC_CodebuildProjectEnvironmentType
CECC_CodebuildProjectSourceBuildspec = var.CLCC_CECC_CodebuildProjectSourceBuildspec
CECC_CodebuildProjectSourceGitCloneDepth = var.CLCC_CECC_CodebuildProjectSourceGitCloneDepth
CECC_CodebuildProjectSourceGitSubmodulesConfig = var.CLCC_CECC_CodebuildProjectSourceGitSubmodulesConfig
CECC_CodebuildProjectSourceInsecureSsl = var.CLCC_CECC_CodebuildProjectSourceInsecureSsl
CECC_CodebuildProjectSourceLocation = var.CLCC_CECC_CodebuildProjectSourceLocation
CECC_CodebuildProjectSourceReportBuildStatus = var.CLCC_CECC_CodebuildProjectSourceReportBuildStatus
CECC_CodebuildProjectSourceBuildStatusConfig = var.CLCC_CECC_CodebuildProjectSourceBuildStatusConfig
CECC_CodebuildProjectSourceType = var.CLCC_CECC_CodebuildProjectSourceType
CECC_CodebuildProjectBadgeEnabled = var.CLCC_CECC_CodebuildProjectBadgeEnabled
CECC_CodebuildProjectBuildBatchConfig = var.CLCC_CECC_CodebuildProjectBuildBatchConfig
CECC_CodebuildProjectBuildTimeout = var.CLCC_CECC_CodebuildProjectBuildTimeout
CECC_CodebuildProjectCache = var.CLCC_CECC_CodebuildProjectCache
CECC_CodebuildProjectConcurrentBuildLimit = var.CLCC_CECC_CodebuildProjectConcurrentBuildLimit
CECC_CodebuildProjectDescription = var.CLCC_CECC_CodebuildProjectDescription
CECC_CodebuildProjectFileSystemLocations = var.CLCC_CECC_CodebuildProjectFileSystemLocations
CECC_CodebuildProjectEncryptionKey = var.CLCC_CECC_CodebuildProjectEncryptionKey
CECC_CodebuildProjectCloudwatchLogsStatus = var.CLCC_CECC_CodebuildProjectCloudwatchLogsStatus
CECC_CodebuildProjectVisibility = var.CLCC_CECC_CodebuildProjectVisibility
CECC_CodebuildProjectResourceAccessRole = var.CLCC_CECC_CodebuildProjectResourceAccessRole
CECC_CodebuildProjectQueuedTimeout = var.CLCC_CECC_CodebuildProjectQueuedTimeout
CECC_CodebuildProjectSecondaryArtifacts = var.CLCC_CECC_CodebuildProjectSecondaryArtifacts
CECC_CodebuildProjectSecondarySources = var.CLCC_CECC_CodebuildProjectSecondarySources
CECC_CodebuildProjectSecondarySourceVersion = var.CLCC_CECC_CodebuildProjectSecondarySourceVersion
CECC_CodebuildProjectSourceVersion = var.CLCC_CECC_CodebuildProjectSourceVersion
CECC_CodebuildProjectVpcConfig = var.CLCC_CECC_CodebuildProjectVpcConfig
CECC_CodebuildCredentialsAuthType = var.CLCC_CECC_CodebuildCredentialsAuthType
CECC_CodebuildCredentialsServerType = var.CLCC_CECC_CodebuildCredentialsServerType
CECC_CodebuildCredentialsToken = var.CLCC_CECC_CodebuildCredentialsToken
CECC_CodebuildCredentialsUserName = var.CLCC_CECC_CodebuildCredentialsUserName
CECC_CodebuildWebhookBuildType = var.CLCC_CECC_CodebuildWebhookBuildType
CECC_CodebuildWebhookBranchFilter = var.CLCC_CECC_CodebuildWebhookBranchFilter
CECC_CodebuildWebhookFilterGroup = var.CLCC_CECC_CodebuildWebhookFilterGroup
CECC_CodebuildWebhookScopeConfiguration = var.CLCC_CECC_CodebuildWebhookScopeConfiguration
CECC_CodebuildRoleAssumeRolePolicyVersion = var.CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion
CECC_CodebuildRoleAssumeRolePolicy = var.CLCC_CECC_CodebuildRoleAssumeRolePolicy
CECC_CodebuildRoleDescription = var.CLCC_CECC_CodebuildRoleDescription
CECC_CodebuildRoleForceDetatchPolicies = var.CLCC_CECC_CodebuildRoleForceDetatchPolicies
CECC_CodebuildRoleMaxSessionDuration = var.CLCC_CECC_CodebuildRoleMaxSessionDuration
CECC_CodebuildRoleNamePrefix = var.CLCC_CECC_CodebuildRoleNamePrefix
CECC_CodebuildRolePath = var.CLCC_CECC_CodebuildRolePath
CECC_CodebuildRolePermissionsBoundary = var.CLCC_CECC_CodebuildRolePermissionsBoundary
CECC_CodebuildRolePolicyDescription = var.CLCC_CECC_CodebuildRolePolicyDescription
CECC_CodebuildRolePolicyNamePrefix = var.CLCC_CECC_CodebuildRolePolicyNamePrefix
CECC_CodebuildRolePolicyPath = var.CLCC_CECC_CodebuildRolePolicyPath
CECC_CodebuildRolePolicyVersion = var.CLCC_CECC_CodebuildRolePolicyVersion
CECC_CodebuildRolePolicyDocumentStatements = var.CLCC_CECC_CodebuildRolePolicyDocumentStatements
CECC_CodebuildLogGroupNamePrefix = var.CLCC_CECC_CodebuildLogGroupNamePrefix
CECC_CodebuildLogGroupSkipDestroy = var.CLCC_CECC_CodebuildLogGroupSkipDestroy
CECC_CodebuildLogGroupClass = var.CLCC_CECC_CodebuildLogGroupClass
CECC_CodebuildLogGroupRetentionInDays = var.CLCC_CECC_CodebuildLogGroupRetentionInDays
CECC_CodebuildLogGroupKmsKeyId = var.CLCC_CECC_CodebuildLogGroupKmsKeyId
CECC_CodebuildRoleEcrPolicyDescription = var.CLCC_CECC_CodebuildRoleEcrPolicyDescription
CECC_CodebuildRoleEcrPolicyNamePrefix = var.CLCC_CECC_CodebuildRoleEcrPolicyNamePrefix
CECC_CodebuildRoleEcrPolicyPath = var.CLCC_CECC_CodebuildRoleEcrPolicyPath
CECC_CodebuildRoleEcrPolicyVersion = var.CLCC_CECC_CodebuildRoleEcrPolicyVersion
CECC_CodebuildRoleEcrPolicyDocumentStatements = var.CLCC_CECC_CodebuildRoleEcrPolicyDocumentStatements
}

#---

    module "LFWLGSAR" {
  source = "../_LFWLGSAR_lambdaFunctionWithLogGroupSecretAndRole"
awsRegion = var.awsRegion
resourceName = var.resourceName
LFWLGSAR_LambdaFunctionArchitectures = var.CLCC_LFWLGSAR_LambdaFunctionArchitectures
LFWLGSAR_LambdaFunctionCodeSigningConfigArn = var.CLCC_LFWLGSAR_LambdaFunctionCodeSigningConfigArn
LFWLGSAR_LambdaFunctionDeadLetterConfig = var.CLCC_LFWLGSAR_LambdaFunctionDeadLetterConfig
LFWLGSAR_LambdaFunctionDescription = var.CLCC_LFWLGSAR_LambdaFunctionDescription
LFWLGSAR_LambdaFunctionEnvironmentVariables = var.CLCC_LFWLGSAR_LambdaFunctionEnvironmentVariables
LFWLGSAR_LambdaFunctionEphemeralStorage = var.CLCC_LFWLGSAR_LambdaFunctionEphemeralStorage
LFWLGSAR_LambdaFunctionFileSystemConfig = var.CLCC_LFWLGSAR_LambdaFunctionFileSystemConfig
LFWLGSAR_LambdaFunctionFilename = var.CLCC_LFWLGSAR_LambdaFunctionFilename
LFWLGSAR_LambdaFunctionHandler = var.CLCC_LFWLGSAR_LambdaFunctionHandler
LFWLGSAR_LambdaFunctionImageConfig = var.CLCC_LFWLGSAR_LambdaFunctionImageConfig
LFWLGSAR_LambdaFunctionImageUri = var.CLCC_LFWLGSAR_LambdaFunctionImageUri
LFWLGSAR_LambdaFunctionKmsKeyArn = var.CLCC_LFWLGSAR_LambdaFunctionKmsKeyArn
LFWLGSAR_LambdaFunctionLayers = var.CLCC_LFWLGSAR_LambdaFunctionLayers
LFWLGSAR_LambdaFunctionLoggingConfig = var.CLCC_LFWLGSAR_LambdaFunctionLoggingConfig
LFWLGSAR_LambdaFunctionMemorySize = var.CLCC_LFWLGSAR_LambdaFunctionMemorySize
LFWLGSAR_LambdaFunctionPackageType = var.CLCC_LFWLGSAR_LambdaFunctionPackageType
LFWLGSAR_LambdaFunctionPublish = var.CLCC_LFWLGSAR_LambdaFunctionPublish
LFWLGSAR_LambdaFunctionReservedConcurrentExecutions = var.CLCC_LFWLGSAR_LambdaFunctionReservedConcurrentExecutions
LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy = var.CLCC_LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy
LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds = var.CLCC_LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds
LFWLGSAR_LambdaFunctionRuntime = var.CLCC_LFWLGSAR_LambdaFunctionRuntime
LFWLGSAR_LambdaFunctionS3Bucket = var.CLCC_LFWLGSAR_LambdaFunctionS3Bucket
LFWLGSAR_LambdaFunctionS3Key = var.CLCC_LFWLGSAR_LambdaFunctionS3Key
LFWLGSAR_LambdaFunctionS3ObjectVersion = var.CLCC_LFWLGSAR_LambdaFunctionS3ObjectVersion
LFWLGSAR_LambdaFunctionSkipDestroy = var.CLCC_LFWLGSAR_LambdaFunctionSkipDestroy
LFWLGSAR_LambdaFunctionSourceCodeHash = var.CLCC_LFWLGSAR_LambdaFunctionSourceCodeHash
LFWLGSAR_LambdaFunctionSnapStart = var.CLCC_LFWLGSAR_LambdaFunctionSnapStart
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
LFWLGSAR_LambdaFunctionTimeout = var.CLCC_LFWLGSAR_LambdaFunctionTimeout
LFWLGSAR_LambdaFunctionTracingConfig = var.CLCC_LFWLGSAR_LambdaFunctionTracingConfig
LFWLGSAR_LambdaFunctionVpcConfig = var.CLCC_LFWLGSAR_LambdaFunctionVpcConfig
LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion = var.CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion
LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy = var.CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy
LFWLGSAR_LambdaFunctionRoleDescription = var.CLCC_LFWLGSAR_LambdaFunctionRoleDescription
LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies = var.CLCC_LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies
LFWLGSAR_LambdaFunctionRoleMaxSessionDuration = var.CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration
LFWLGSAR_LambdaFunctionRoleNamePrefix = var.CLCC_LFWLGSAR_LambdaFunctionRoleNamePrefix
LFWLGSAR_LambdaFunctionRolePath = var.CLCC_LFWLGSAR_LambdaFunctionRolePath
LFWLGSAR_LambdaFunctionRolePermissionsBoundary = var.CLCC_LFWLGSAR_LambdaFunctionRolePermissionsBoundary
LFWLGSAR_LambdaGenericPolicyDescription = var.CLCC_LFWLGSAR_LambdaGenericPolicyDescription
LFWLGSAR_LambdaGenericPolicyNamePrefix = var.CLCC_LFWLGSAR_LambdaGenericPolicyNamePrefix
LFWLGSAR_LambdaGenericPolicyPath = var.CLCC_LFWLGSAR_LambdaGenericPolicyPath
LFWLGSAR_LambdaGenericPolicyVersion = var.CLCC_LFWLGSAR_LambdaGenericPolicyVersion
LFWLGSAR_LambdaGenericPolicyDocumentStatements = var.CLCC_LFWLGSAR_LambdaGenericPolicyDocumentStatements
LFWLGSAR_LambdaSecretDescription = var.CLCC_LFWLGSAR_LambdaSecretDescription
LFWLGSAR_LambdaSecretKmsKeyId = var.CLCC_LFWLGSAR_LambdaSecretKmsKeyId
LFWLGSAR_LambdaSecretNamePrefix = var.CLCC_LFWLGSAR_LambdaSecretNamePrefix
LFWLGSAR_LambdaSecretPolicy = var.CLCC_LFWLGSAR_LambdaSecretPolicy
LFWLGSAR_LambdaSecretRecoveryWindowInDays = var.CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays
LFWLGSAR_LambdaSecretReplica = var.CLCC_LFWLGSAR_LambdaSecretReplica
LFWLGSAR_LambdaSecretForceSecretOverwrite = var.CLCC_LFWLGSAR_LambdaSecretForceSecretOverwrite
LFWLGSAR_LambdaSecretVersionSecretString = var.CLCC_LFWLGSAR_LambdaSecretVersionSecretString
LFWLGSAR_LambdaSecretVersionSecretBinary = var.CLCC_LFWLGSAR_LambdaSecretVersionSecretBinary
LFWLGSAR_LambdaSecretVersionStages = var.CLCC_LFWLGSAR_LambdaSecretVersionStages
LFWLGSAR_LambdaSecretPolicyDescription = var.CLCC_LFWLGSAR_LambdaSecretPolicyDescription
LFWLGSAR_LambdaSecretPolicyNamePrefix = var.CLCC_LFWLGSAR_LambdaSecretPolicyNamePrefix
LFWLGSAR_LambdaSecretPolicyPath = var.CLCC_LFWLGSAR_LambdaSecretPolicyPath
LFWLGSAR_LambdaSecretPolicyVersion = var.CLCC_LFWLGSAR_LambdaSecretPolicyVersion
LFWLGSAR_LambdaSecretPolicyDocumentStatements = var.CLCC_LFWLGSAR_LambdaSecretPolicyDocumentStatements
LFWLGSAR_LambdaLogGroupNamePrefix = var.CLCC_LFWLGSAR_LambdaLogGroupNamePrefix
LFWLGSAR_LambdaLogGroupSkipDestroy = var.CLCC_LFWLGSAR_LambdaLogGroupSkipDestroy
LFWLGSAR_LambdaLogGroupClass = var.CLCC_LFWLGSAR_LambdaLogGroupClass
LFWLGSAR_LambdaLogGroupRetentionInDays = var.CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays
LFWLGSAR_LambdaLogGroupKmsKeyId = var.CLCC_LFWLGSAR_LambdaLogGroupKmsKeyId
}

#---

    module "iamPolicyUpdateLambda" {
  source = "../../aws/iam/genericIamPolicy"
awsRegion = var.awsRegion
iamPolicyDescription = var.CLCC_IamPolicyUpdateLambdaDescription
iamPolicyNamePrefix = var.CLCC_IamPolicyUpdateLambdaNamePrefix
resourceName = var.resourceName
iamPolicyPath = var.CLCC_IamPolicyUpdateLambdaPath
iamPolicyVersion = var.CLCC_IamPolicyUpdateLambdaVersion
iamPolicyDocumentStatements = var.CLCC_IamPolicyUpdateLambdaDocumentStatements
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---

    module "policyAttachmentUpdateLambda" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"
awsRegion = var.awsRegion
policyAttachmentRoleName = var.CLCC_PolicyAttachmentUpdateLambdaRoleName
policyAttachmentPolicyArn = var.CLCC_PolicyAttachmentUpdateLambdaPolicyArn
}

#---


# module "CECC" {
#   source                                             = "../_CECC_codebuildEcrCiCd"
#   awsRegion                                          = var.awsRegion
#   resourceName                                       = var.resourceName
#   CECC_EcrRepositoryEncryptionConfiguration          = var.CLCC_CECC_EcrRepositoryEncryptionConfiguration
#   CECC_EcrRepositoryForceDelete                      = var.CLCC_CECC_EcrRepositoryForceDelete
#   CECC_EcrRepositoryImageTagMutability               = var.CLCC_CECC_EcrRepositoryImageTagMutability
#   CECC_EcrRepositoryImageScanningConfiguration       = var.CLCC_CECC_EcrRepositoryImageScanningConfiguration
#   projectName                                        = var.projectName
#   createdBy                                          = var.createdBy
#   deployedDate                                       = var.deployedDate
#   tfModule                                           = var.tfModule
#   additionalTags                                     = var.additionalTags
#   CECC_CodebuildProjectArtifactsIdentifier           = var.CLCC_CECC_CodebuildProjectArtifactsIdentifier
#   CECC_CodebuildProjectArtifactsBucketOwnerAccess    = var.CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess
#   CECC_CodebuildProjectArtifactsEncryptionDisabled   = var.CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled
#   CECC_CodebuildProjectArtifactsLocation             = var.CLCC_CECC_CodebuildProjectArtifactsLocation
#   CECC_CodebuildProjectArtifactsName                 = var.CLCC_CECC_CodebuildProjectArtifactsName
#   CECC_CodebuildProjectArtifactsNamespaceType        = var.CLCC_CECC_CodebuildProjectArtifactsNamespaceType
#   CECC_CodebuildProjectArtifactsOverrideArtifactName = var.CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName
#   CECC_CodebuildProjectArtifactsPackaging            = var.CLCC_CECC_CodebuildProjectArtifactsPackaging
#   CECC_CodebuildProjectArtifactsPath                 = var.CLCC_CECC_CodebuildProjectArtifactsPath
#   CECC_CodebuildProjectArtifactsType                 = var.CLCC_CECC_CodebuildProjectArtifactsType
#   CECC_CodebuildProjectEnvironmentCertificate        = var.CLCC_CECC_CodebuildProjectEnvironmentCertificate
#   CECC_CodebuildProjectEnvironmentComputeType        = var.CLCC_CECC_CodebuildProjectEnvironmentComputeType
#   # CECC_CodebuildProjectEnvironmentFleet = var.CLCC_CECC_CodebuildProjectEnvironmentFleet
#   awsAccountId                    = var.awsAccountId
#   codebuildProjectEcrRepoImageTag = var.codebuildProjectEcrRepoImageTag
#   CECC_CodebuildProjectEnvironmentEnvironmentVariable = merge({
#     "LAMBDA_FUNCTION" = {
#       name  = "LAMBDA_FUNCTION"
#       value = "${var.resourceName}-lambda-function" #Had to hardcode this to ensure there is no circular ref and ECCFG_ codebuild project builds prior to lambda fail.
#     }
#   }, var.CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariable)
#   CECC_CodebuildProjectEnvironmentImagePullCredentialsType = var.CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType
#   CECC_CodebuildProjectEnvironmentImage                    = var.CLCC_CECC_CodebuildProjectEnvironmentImage
#   CECC_CodebuildProjectEnvironmentPrivilegedMode           = var.CLCC_CECC_CodebuildProjectEnvironmentPrivilegedMode
#   CECC_CodebuildProjectEnvironmentRegistryCredential       = var.CLCC_CECC_CodebuildProjectEnvironmentRegistryCredential
#   CECC_CodebuildProjectEnvironmentType                     = var.CLCC_CECC_CodebuildProjectEnvironmentType
#   CECC_CodebuildProjectSourceBuildspec                     = var.CLCC_CECC_CodebuildProjectSourceBuildspec
#   CECC_CodebuildProjectSourceGitCloneDepth                 = var.CLCC_CECC_CodebuildProjectSourceGitCloneDepth
#   CECC_CodebuildProjectSourceGitSubmodulesConfig           = var.CLCC_CECC_CodebuildProjectSourceGitSubmodulesConfig
#   CECC_CodebuildProjectSourceInsecureSsl                   = var.CLCC_CECC_CodebuildProjectSourceInsecureSsl
#   CECC_CodebuildProjectSourceLocation                      = var.CLCC_CECC_CodebuildProjectSourceLocation
#   CECC_CodebuildProjectSourceReportBuildStatus             = var.CLCC_CECC_CodebuildProjectSourceReportBuildStatus
#   CECC_CodebuildProjectSourceBuildStatusConfig             = var.CLCC_CECC_CodebuildProjectSourceBuildStatusConfig
#   CECC_CodebuildProjectSourceType                          = var.CLCC_CECC_CodebuildProjectSourceType
#   CECC_CodebuildProjectBadgeEnabled                        = var.CLCC_CECC_CodebuildProjectBadgeEnabled
#   CECC_CodebuildProjectBuildBatchConfig                    = var.CLCC_CECC_CodebuildProjectBuildBatchConfig
#   CECC_CodebuildProjectBuildTimeout                        = var.CLCC_CECC_CodebuildProjectBuildTimeout
#   CECC_CodebuildProjectCache                               = var.CLCC_CECC_CodebuildProjectCache
#   CECC_CodebuildProjectConcurrentBuildLimit                = var.CLCC_CECC_CodebuildProjectConcurrentBuildLimit
#   CECC_CodebuildProjectDescription                         = var.CLCC_CECC_CodebuildProjectDescription
#   CECC_CodebuildProjectFileSystemLocations                 = var.CLCC_CECC_CodebuildProjectFileSystemLocations
#   CECC_CodebuildProjectEncryptionKey                       = var.CLCC_CECC_CodebuildProjectEncryptionKey
#   CECC_CodebuildProjectCloudwatchLogsStatus                = var.CLCC_CECC_CodebuildProjectCloudwatchLogsStatus
#   CECC_CodebuildProjectVisibility                          = var.CLCC_CECC_CodebuildProjectVisibility
#   CECC_CodebuildProjectResourceAccessRole                  = var.CLCC_CECC_CodebuildProjectResourceAccessRole
#   CECC_CodebuildProjectQueuedTimeout                       = var.CLCC_CECC_CodebuildProjectQueuedTimeout
#   CECC_CodebuildProjectSecondaryArtifacts                  = var.CLCC_CECC_CodebuildProjectSecondaryArtifacts
#   CECC_CodebuildProjectSecondarySources                    = var.CLCC_CECC_CodebuildProjectSecondarySources
#   CECC_CodebuildProjectSecondarySourceVersion              = var.CLCC_CECC_CodebuildProjectSecondarySourceVersion
#   CECC_CodebuildProjectSourceVersion                       = var.CLCC_CECC_CodebuildProjectSourceVersion
#   CECC_CodebuildProjectVpcConfig                           = var.CLCC_CECC_CodebuildProjectVpcConfig
#   CECC_CodebuildCredentialsAuthType                        = var.CLCC_CECC_CodebuildCredentialsAuthType
#   CECC_CodebuildCredentialsServerType                      = var.CLCC_CECC_CodebuildCredentialsServerType
#   CECC_CodebuildCredentialsToken                           = var.CLCC_CECC_CodebuildCredentialsToken
#   CECC_CodebuildCredentialsUserName                        = var.CLCC_CECC_CodebuildCredentialsUserName
#   CECC_CodebuildWebhookBuildType                           = var.CLCC_CECC_CodebuildWebhookBuildType
#   CECC_CodebuildWebhookBranchFilter                        = var.CLCC_CECC_CodebuildWebhookBranchFilter
#   CECC_CodebuildWebhookFilterGroup                         = var.CLCC_CECC_CodebuildWebhookFilterGroup
#   CECC_CodebuildWebhookScopeConfiguration                  = var.CLCC_CECC_CodebuildWebhookScopeConfiguration
#   CECC_CodebuildRoleAssumeRolePolicyVersion                = var.CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion
#   CECC_CodebuildRoleAssumeRolePolicy                       = var.CLCC_CECC_CodebuildRoleAssumeRolePolicy
#   CECC_CodebuildRoleDescription                            = var.CLCC_CECC_CodebuildRoleDescription
#   CECC_CodebuildRoleForceDetatchPolicies                   = var.CLCC_CECC_CodebuildRoleForceDetatchPolicies
#   CECC_CodebuildRoleMaxSessionDuration                     = var.CLCC_CECC_CodebuildRoleMaxSessionDuration
#   CECC_CodebuildRoleNamePrefix                             = var.CLCC_CECC_CodebuildRoleNamePrefix
#   CECC_CodebuildRolePath                                   = var.CLCC_CECC_CodebuildRolePath
#   CECC_CodebuildRolePermissionsBoundary                    = var.CLCC_CECC_CodebuildRolePermissionsBoundary
#   CECC_CodebuildRolePolicyDescription                      = var.CLCC_CECC_CodebuildRolePolicyDescription
#   CECC_CodebuildRolePolicyNamePrefix                       = var.CLCC_CECC_CodebuildRolePolicyNamePrefix
#   CECC_CodebuildRolePolicyPath                             = var.CLCC_CECC_CodebuildRolePolicyPath
#   CECC_CodebuildRolePolicyVersion                          = var.CLCC_CECC_CodebuildRolePolicyVersion
#   CECC_CodebuildRolePolicyDocumentStatements               = var.CLCC_CECC_CodebuildRolePolicyDocumentStatements
#   CECC_CodebuildLogGroupNamePrefix                         = var.CLCC_CECC_CodebuildLogGroupNamePrefix
#   CECC_CodebuildLogGroupSkipDestroy                        = var.CLCC_CECC_CodebuildLogGroupSkipDestroy
#   CECC_CodebuildLogGroupClass                              = var.CLCC_CECC_CodebuildLogGroupClass
#   CECC_CodebuildLogGroupRetentionInDays                    = var.CLCC_CECC_CodebuildLogGroupRetentionInDays
#   CECC_CodebuildLogGroupKmsKeyId                           = var.CLCC_CECC_CodebuildLogGroupKmsKeyId
#   CECC_CodebuildRoleEcrPolicyDescription                   = var.CLCC_CECC_CodebuildRoleEcrPolicyDescription
#   CECC_CodebuildRoleEcrPolicyNamePrefix                    = var.CLCC_CECC_CodebuildRoleEcrPolicyNamePrefix
#   CECC_CodebuildRoleEcrPolicyPath                          = var.CLCC_CECC_CodebuildRoleEcrPolicyPath
#   CECC_CodebuildRoleEcrPolicyVersion                       = var.CLCC_CECC_CodebuildRoleEcrPolicyVersion
#   CECC_CodebuildRoleEcrPolicyDocumentStatements            = var.CLCC_CECC_CodebuildRoleEcrPolicyDocumentStatements
# }

# #---

# module "LFWLGSAR" {
#   source                                      = "../_LFWLGSAR_lambdaFunctionWithLogGroupSecretAndRole"
#   awsRegion                                   = var.awsRegion
#   resourceName                                = var.resourceName
#   LFWLGSAR_LambdaFunctionArchitectures        = var.CLCC_LFWLGSAR_LambdaFunctionArchitectures
#   LFWLGSAR_LambdaFunctionCodeSigningConfigArn = var.CLCC_LFWLGSAR_LambdaFunctionCodeSigningConfigArn
#   LFWLGSAR_LambdaFunctionDeadLetterConfig     = var.CLCC_LFWLGSAR_LambdaFunctionDeadLetterConfig
#   LFWLGSAR_LambdaFunctionDescription          = var.CLCC_LFWLGSAR_LambdaFunctionDescription
#   LFWLGSAR_LambdaFunctionEnvironmentVariables = merge({
#     "CODEBUILD_PROJECT_NAME" = module.CECC.CECC_CodebuildProjectName
#   }, var.CLCC_LFWLGSAR_LambdaFunctionEnvironmentVariables)
#   LFWLGSAR_LambdaFunctionEphemeralStorage               = var.CLCC_LFWLGSAR_LambdaFunctionEphemeralStorage
#   LFWLGSAR_LambdaFunctionFileSystemConfig               = var.CLCC_LFWLGSAR_LambdaFunctionFileSystemConfig
#   LFWLGSAR_LambdaFunctionFilename                       = var.CLCC_LFWLGSAR_LambdaFunctionFilename
#   LFWLGSAR_LambdaFunctionHandler                        = var.CLCC_LFWLGSAR_LambdaFunctionHandler
#   LFWLGSAR_LambdaFunctionImageConfig                    = var.CLCC_LFWLGSAR_LambdaFunctionImageConfig
#   LFWLGSAR_LambdaFunctionImageUri                       = "${module.CECC.CECC_EcrRepositoryUrl}:${var.codebuildProjectEcrRepoImageTag}"
#   LFWLGSAR_LambdaFunctionKmsKeyArn                      = var.CLCC_LFWLGSAR_LambdaFunctionKmsKeyArn
#   LFWLGSAR_LambdaFunctionLayers                         = var.CLCC_LFWLGSAR_LambdaFunctionLayers
#   LFWLGSAR_LambdaFunctionLoggingConfig                  = var.CLCC_LFWLGSAR_LambdaFunctionLoggingConfig
#   LFWLGSAR_LambdaFunctionMemorySize                     = var.CLCC_LFWLGSAR_LambdaFunctionMemorySize
#   LFWLGSAR_LambdaFunctionPackageType                    = var.CLCC_LFWLGSAR_LambdaFunctionPackageType
#   LFWLGSAR_LambdaFunctionPublish                        = var.CLCC_LFWLGSAR_LambdaFunctionPublish
#   LFWLGSAR_LambdaFunctionReservedConcurrentExecutions   = var.CLCC_LFWLGSAR_LambdaFunctionReservedConcurrentExecutions
#   LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy = var.CLCC_LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy
#   LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds    = var.CLCC_LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds
#   LFWLGSAR_LambdaFunctionRuntime                        = var.CLCC_LFWLGSAR_LambdaFunctionRuntime
#   LFWLGSAR_LambdaFunctionS3Bucket                       = var.CLCC_LFWLGSAR_LambdaFunctionS3Bucket
#   LFWLGSAR_LambdaFunctionS3Key                          = var.CLCC_LFWLGSAR_LambdaFunctionS3Key
#   LFWLGSAR_LambdaFunctionS3ObjectVersion                = var.CLCC_LFWLGSAR_LambdaFunctionS3ObjectVersion
#   LFWLGSAR_LambdaFunctionSkipDestroy                    = var.CLCC_LFWLGSAR_LambdaFunctionSkipDestroy
#   LFWLGSAR_LambdaFunctionSourceCodeHash                 = var.CLCC_LFWLGSAR_LambdaFunctionSourceCodeHash
#   LFWLGSAR_LambdaFunctionSnapStart                      = var.CLCC_LFWLGSAR_LambdaFunctionSnapStart
#   projectName                                           = var.projectName
#   createdBy                                             = var.createdBy
#   deployedDate                                          = var.deployedDate
#   tfModule                                              = var.tfModule
#   additionalTags                                        = var.additionalTags
#   LFWLGSAR_LambdaFunctionTimeout                        = var.CLCC_LFWLGSAR_LambdaFunctionTimeout
#   LFWLGSAR_LambdaFunctionTracingConfig                  = var.CLCC_LFWLGSAR_LambdaFunctionTracingConfig
#   LFWLGSAR_LambdaFunctionVpcConfig                      = var.CLCC_LFWLGSAR_LambdaFunctionVpcConfig
#   LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion    = var.CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion
#   LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy           = var.CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy
#   LFWLGSAR_LambdaFunctionRoleDescription                = var.CLCC_LFWLGSAR_LambdaFunctionRoleDescription
#   LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies       = var.CLCC_LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies
#   LFWLGSAR_LambdaFunctionRoleMaxSessionDuration         = var.CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration
#   LFWLGSAR_LambdaFunctionRoleNamePrefix                 = var.CLCC_LFWLGSAR_LambdaFunctionRoleNamePrefix
#   LFWLGSAR_LambdaFunctionRolePath                       = var.CLCC_LFWLGSAR_LambdaFunctionRolePath
#   LFWLGSAR_LambdaFunctionRolePermissionsBoundary        = var.CLCC_LFWLGSAR_LambdaFunctionRolePermissionsBoundary
#   LFWLGSAR_LambdaGenericPolicyDescription               = var.CLCC_LFWLGSAR_LambdaGenericPolicyDescription
#   LFWLGSAR_LambdaGenericPolicyNamePrefix                = var.CLCC_LFWLGSAR_LambdaGenericPolicyNamePrefix
#   LFWLGSAR_LambdaGenericPolicyPath                      = var.CLCC_LFWLGSAR_LambdaGenericPolicyPath
#   LFWLGSAR_LambdaGenericPolicyVersion                   = var.CLCC_LFWLGSAR_LambdaGenericPolicyVersion
#   LFWLGSAR_LambdaGenericPolicyDocumentStatements        = var.CLCC_LFWLGSAR_LambdaGenericPolicyDocumentStatements
#   LFWLGSAR_LambdaSecretDescription                      = var.CLCC_LFWLGSAR_LambdaSecretDescription
#   LFWLGSAR_LambdaSecretKmsKeyId                         = var.CLCC_LFWLGSAR_LambdaSecretKmsKeyId
#   LFWLGSAR_LambdaSecretNamePrefix                       = var.CLCC_LFWLGSAR_LambdaSecretNamePrefix
#   LFWLGSAR_LambdaSecretPolicy                           = var.CLCC_LFWLGSAR_LambdaSecretPolicy
#   LFWLGSAR_LambdaSecretRecoveryWindowInDays             = var.CLCC_LFWLGSAR_LambdaSecretRecoveryWindowInDays
#   LFWLGSAR_LambdaSecretReplica                          = var.CLCC_LFWLGSAR_LambdaSecretReplica
#   LFWLGSAR_LambdaSecretForceSecretOverwrite             = var.CLCC_LFWLGSAR_LambdaSecretForceSecretOverwrite
#   LFWLGSAR_LambdaSecretVersionSecretString              = var.CLCC_LFWLGSAR_LambdaSecretVersionSecretString
#   LFWLGSAR_LambdaSecretVersionSecretBinary              = var.CLCC_LFWLGSAR_LambdaSecretVersionSecretBinary
#   LFWLGSAR_LambdaSecretVersionStages                    = var.CLCC_LFWLGSAR_LambdaSecretVersionStages
#   LFWLGSAR_LambdaSecretPolicyDescription                = var.CLCC_LFWLGSAR_LambdaSecretPolicyDescription
#   LFWLGSAR_LambdaSecretPolicyNamePrefix                 = var.CLCC_LFWLGSAR_LambdaSecretPolicyNamePrefix
#   LFWLGSAR_LambdaSecretPolicyPath                       = var.CLCC_LFWLGSAR_LambdaSecretPolicyPath
#   LFWLGSAR_LambdaSecretPolicyVersion                    = var.CLCC_LFWLGSAR_LambdaSecretPolicyVersion
#   LFWLGSAR_LambdaSecretPolicyDocumentStatements         = var.CLCC_LFWLGSAR_LambdaSecretPolicyDocumentStatements
#   LFWLGSAR_LambdaLogGroupNamePrefix                     = var.CLCC_LFWLGSAR_LambdaLogGroupNamePrefix
#   LFWLGSAR_LambdaLogGroupSkipDestroy                    = var.CLCC_LFWLGSAR_LambdaLogGroupSkipDestroy
#   LFWLGSAR_LambdaLogGroupClass                          = var.CLCC_LFWLGSAR_LambdaLogGroupClass
#   LFWLGSAR_LambdaLogGroupRetentionInDays                = var.CLCC_LFWLGSAR_LambdaLogGroupRetentionInDays
#   LFWLGSAR_LambdaLogGroupKmsKeyId                       = var.CLCC_LFWLGSAR_LambdaLogGroupKmsKeyId
# }

# module "codebuildLambdaBuildPolicy" {
#   source               = "../../aws/iam/genericIamPolicy"
#   awsRegion            = var.awsRegion
#   iamPolicyDescription = var.CLCC_CodebuildLambdaBuildPolicyDescription
#   iamPolicyNamePrefix  = var.CLCC_CodebuildLambdaBuildPolicyNamePrefix
#   resourceName         = "${module.CECC.CECC_CodebuildProjectName}-lambda-update"
#   iamPolicyPath        = var.CLCC_CodebuildLambdaBuildPolicyPath
#   iamPolicyVersion     = var.CLCC_CodebuildLambdaBuildPolicyVersion
#   iamPolicyDocumentStatements = concat([
#     {
#       Action = [
#         "lambda:UpdateFunctionCode"
#       ]
#       Effect = "Allow"
#       Resource = [
#         module.LFWLGSAR.LFWLGSAR_LambdaFunctionArn,
#       ]
#       Sid = "updateLambda"
#     }
#   ], var.CLCC_CodebuildLambdaBuildPolicyDocumentStatements)
#   projectName    = var.projectName
#   createdBy      = var.createdBy
#   deployedDate   = var.deployedDate
#   tfModule       = var.tfModule
#   additionalTags = var.additionalTags
# }

# #---

# module "codebuildLambdaBuildPolicyAttachment" {
#   source                    = "../../aws/iam/genericIamRolePolicyAttachment"
#   awsRegion                 = var.awsRegion
#   policyAttachmentRoleName  = module.CECC.CECC_CodebuildRoleName
#   policyAttachmentPolicyArn = module.codebuildLambdaBuildPolicy.iamPolicyArn
# }

# #---

