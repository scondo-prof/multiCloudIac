
module "CECC" {
  source                                                   = "../_CECC_codebuildEcrCiCd"
  awsRegion                                                = var.awsRegion
  resourceName                                             = var.resourceName
  CECC_EcrRepositoryEncryptionConfiguration                = var.CLCC_CECC_EcrRepositoryEncryptionConfiguration
  CECC_EcrRepositoryForceDelete                            = var.CLCC_CECC_EcrRepositoryForceDelete
  CECC_EcrRepositoryImageTagMutability                     = var.CLCC_CECC_EcrRepositoryImageTagMutability
  CECC_EcrRepositoryImageScanningConfiguration             = var.CLCC_CECC_EcrRepositoryImageScanningConfiguration
  projectName                                              = var.projectName
  creator                                                  = var.creator
  deployedDate                                             = var.deployedDate
  additionalTags                                           = var.additionalTags
  CECC_CodebuildProjectArtifactsIdentifier                 = var.CLCC_CECC_CodebuildProjectArtifactsIdentifier
  CECC_CodebuildProjectArtifactsBucketOwnerAccess          = var.CLCC_CECC_CodebuildProjectArtifactsBucketOwnerAccess
  CECC_CodebuildProjectArtifactsEncryptionDisabled         = var.CLCC_CECC_CodebuildProjectArtifactsEncryptionDisabled
  CECC_CodebuildProjectArtifactsLocation                   = var.CLCC_CECC_CodebuildProjectArtifactsLocation
  CECC_CodebuildProjectArtifactsName                       = var.CLCC_CECC_CodebuildProjectArtifactsName
  CECC_CodebuildProjectArtifactsNamespaceType              = var.CLCC_CECC_CodebuildProjectArtifactsNamespaceType
  CECC_CodebuildProjectArtifactsOverrideArtifactName       = var.CLCC_CECC_CodebuildProjectArtifactsOverrideArtifactName
  CECC_CodebuildProjectArtifactsPackaging                  = var.CLCC_CECC_CodebuildProjectArtifactsPackaging
  CECC_CodebuildProjectArtifactsPath                       = var.CLCC_CECC_CodebuildProjectArtifactsPath
  CECC_CodebuildProjectArtifactsType                       = var.CLCC_CECC_CodebuildProjectArtifactsType
  CECC_CodebuildProjectEnvironmentCertificate              = var.CLCC_CECC_CodebuildProjectEnvironmentCertificate
  CECC_CodebuildProjectEnvironmentComputeType              = var.CLCC_CECC_CodebuildProjectEnvironmentComputeType
  CECC_CodebuildProjectEnvironmentFleet                    = var.CLCC_CECC_CodebuildProjectEnvironmentFleet
  awsAccountId                                             = var.awsAccountId
  codebuildProjectEcrRepoImageTag                          = var.codebuildProjectEcrRepoImageTag
  CECC_CodebuildProjectEnvironmentEnvironmentVariables     = merge({
    "LAMBDA_FUNCTION" = {
      name  = "LAMBDA_FUNCTION"
      value = "${var.resourceName}-lambda-function" #Had to hardcode this to ensure there is no circular ref and ECCFG_ codebuild project builds prior to lambda fail.
    }
  }, var.CLCC_CECC_CodebuildProjectEnvironmentEnvironmentVariables)
  CECC_CodebuildProjectEnvironmentImagePullCredentialsType = var.CLCC_CECC_CodebuildProjectEnvironmentImagePullCredentialsType
  CECC_CodebuildProjectEnvironmentImage                    = var.CLCC_CECC_CodebuildProjectEnvironmentImage
  CECC_CodebuildProjectEnvironmentPrivilegedMode           = var.CLCC_CECC_CodebuildProjectEnvironmentPrivilegedMode
  CECC_CodebuildProjectEnvironmentRegistryCredential       = var.CLCC_CECC_CodebuildProjectEnvironmentRegistryCredential
  CECC_CodebuildProjectEnvironmentType                     = var.CLCC_CECC_CodebuildProjectEnvironmentType
  CECC_CodebuildProjectSourceBuildspec                     = var.CLCC_CECC_CodebuildProjectSourceBuildspec
  CECC_CodebuildProjectSourceGitCloneDepth                 = var.CLCC_CECC_CodebuildProjectSourceGitCloneDepth
  CECC_CodebuildProjectSourceGitSubmodulesConfig           = var.CLCC_CECC_CodebuildProjectSourceGitSubmodulesConfig
  CECC_CodebuildProjectSourceInsecureSsl                   = var.CLCC_CECC_CodebuildProjectSourceInsecureSsl
  CECC_CodebuildProjectSourceLocation                      = var.CLCC_CECC_CodebuildProjectSourceLocation
  CECC_CodebuildProjectSourceReportBuildStatus             = var.CLCC_CECC_CodebuildProjectSourceReportBuildStatus
  CECC_CodebuildProjectSourceBuildStatusConfig             = var.CLCC_CECC_CodebuildProjectSourceBuildStatusConfig
  CECC_CodebuildProjectSourceType                          = var.CLCC_CECC_CodebuildProjectSourceType
  CECC_CodebuildProjectBadgeEnabled                        = var.CLCC_CECC_CodebuildProjectBadgeEnabled
  CECC_CodebuildProjectBuildBatchConfig                    = var.CLCC_CECC_CodebuildProjectBuildBatchConfig
  CECC_CodebuildProjectBuildTimeout                        = var.CLCC_CECC_CodebuildProjectBuildTimeout
  CECC_CodebuildProjectCache                               = var.CLCC_CECC_CodebuildProjectCache
  CECC_CodebuildProjectConcurrentBuildLimit                = var.CLCC_CECC_CodebuildProjectConcurrentBuildLimit
  CECC_CodebuildProjectDescription                         = var.CLCC_CECC_CodebuildProjectDescription
  CECC_CodebuildProjectFileSystemLocations                 = var.CLCC_CECC_CodebuildProjectFileSystemLocations
  CECC_CodebuildProjectEncryptionKey                       = var.CLCC_CECC_CodebuildProjectEncryptionKey
  CECC_CodebuildProjectCloudwatchLogsConfigStatus          = var.CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStatus
  CECC_CodebuildProjectCloudwatchLogsConfigStreamName      = var.CLCC_CECC_CodebuildProjectCloudwatchLogsConfigStreamName
  CECC_CodebuildProjectS3LogsConfig                        = var.CLCC_CECC_CodebuildProjectS3LogsConfig
  CECC_CodebuildProjectVisibility                          = var.CLCC_CECC_CodebuildProjectVisibility
  CECC_CodebuildProjectResourceAccessRole                  = var.CLCC_CECC_CodebuildProjectResourceAccessRole
  CECC_CodebuildProjectQueuedTimeout                       = var.CLCC_CECC_CodebuildProjectQueuedTimeout
  CECC_CodebuildProjectSecondaryArtifacts                  = var.CLCC_CECC_CodebuildProjectSecondaryArtifacts
  CECC_CodebuildProjectSecondarySources                    = var.CLCC_CECC_CodebuildProjectSecondarySources
  CECC_CodebuildProjectSecondarySourceVersion              = var.CLCC_CECC_CodebuildProjectSecondarySourceVersion
  CECC_CodebuildProjectSourceVersion                       = var.CLCC_CECC_CodebuildProjectSourceVersion
  CECC_CodebuildProjectVpcConfig                           = var.CLCC_CECC_CodebuildProjectVpcConfig
  CECC_CredentialsAuthType                                 = var.CLCC_CECC_CredentialsAuthType
  CECC_CredentialsServerType                               = var.CLCC_CECC_CredentialsServerType
  CECC_CredentialsToken                                    = var.CLCC_CECC_CredentialsToken
  CECC_CredentialsUserName                                 = var.CLCC_CECC_CredentialsUserName
  CECC_WebhookBuildType                                    = var.CLCC_CECC_WebhookBuildType
  CECC_WebhookBranchFilter                                 = var.CLCC_CECC_WebhookBranchFilter
  CECC_WebhookFilterGroup                                  = var.CLCC_CECC_WebhookFilterGroup
  CECC_WebhookScopeConfiguration                           = var.CLCC_CECC_WebhookScopeConfiguration
  CECC_CodebuildRoleAssumeRolePolicyVersion                = var.CLCC_CECC_CodebuildRoleAssumeRolePolicyVersion
  CECC_CodebuildRoleAssumeRolePolicy                       = var.CLCC_CECC_CodebuildRoleAssumeRolePolicy
  CECC_CodebuildRoleDescription                            = var.CLCC_CECC_CodebuildRoleDescription
  CECC_CodebuildRoleForceDetatchPolicies                   = var.CLCC_CECC_CodebuildRoleForceDetatchPolicies
  CECC_CodebuildRoleMaxSessionDuration                     = var.CLCC_CECC_CodebuildRoleMaxSessionDuration
  CECC_CodebuildRoleNamePrefix                             = var.CLCC_CECC_CodebuildRoleNamePrefix
  CECC_CodebuildRolePath                                   = var.CLCC_CECC_CodebuildRolePath
  CECC_CodebuildRolePermissionsBoundary                    = var.CLCC_CECC_CodebuildRolePermissionsBoundary
  CECC_CodebuildPolicyDescription                          = var.CLCC_CECC_CodebuildPolicyDescription
  CECC_CodebuildPolicyNamePrefix                           = var.CLCC_CECC_CodebuildPolicyNamePrefix
  CECC_CodebuildPolicyPath                                 = var.CLCC_CECC_CodebuildPolicyPath
  CECC_CodebuildPolicyVersion                              = var.CLCC_CECC_CodebuildPolicyVersion
  CECC_CodebuildPolicyDocumentAdditionalStatements         = var.CLCC_CECC_CodebuildPolicyDocumentAdditionalStatements
  CECC_LogGroupNamePrefix                                  = var.CLCC_CECC_LogGroupNamePrefix
  CECC_LogGroupSkipDestroy                                 = var.CLCC_CECC_LogGroupSkipDestroy
  CECC_LogGroupClass                                       = var.CLCC_CECC_LogGroupClass
  CECC_LogGroupRetentionInDays                             = var.CLCC_CECC_LogGroupRetentionInDays
  CECC_LogGroupKmsKeyId                                    = var.CLCC_CECC_LogGroupKmsKeyId
  CECC_EcrAccessPolicyDescription                          = var.CLCC_CECC_EcrAccessPolicyDescription
  CECC_EcrAccessPolicyNamePrefix                           = var.CLCC_CECC_EcrAccessPolicyNamePrefix
  CECC_EcrAccessPolicyPath                                 = var.CLCC_CECC_EcrAccessPolicyPath
  CECC_EcrAccessPolicyVersion                              = var.CLCC_CECC_EcrAccessPolicyVersion
  CECC_EcrAccessPolicyDocumentAdditionalStatements         = var.CLCC_CECC_EcrAccessPolicyDocumentAdditionalStatements
}

#---

module "updateLambdaPolicy" {
  source                      = "../../aws/iam/genericIamPolicy"
  awsRegion                   = var.awsRegion
  iamPolicyDescription        = var.CLCC_UpdateLambdaPolicyDescription
  iamPolicyNamePrefix         = var.CLCC_UpdateLambdaPolicyNamePrefix
  resourceName                = "${module.CECC.CECC_CodebuildProjectName}-lambda-update"
  iamPolicyPath               = var.CLCC_UpdateLambdaPolicyPath
  iamPolicyVersion            = var.CLCC_UpdateLambdaPolicyVersion
  iamPolicyDocumentStatements = concat([
    {
    Action = [
      "lambda:UpdateFunctionCode"
    ]
    Effect = "Allow"
    Resource = [
      module.LFWLGSAR.LFWLGSAR_LambdaFunctionArn,
    ]
    Sid = "updateLambda"
  }
  ], var.CLCC_UpdateLambdaPolicyDocumentStatements)
  projectName                 = var.projectName
  creator                     = var.creator
  deployedDate                = var.deployedDate
  additionalTags              = var.additionalTags
}

#---

module "updateLambdaPolicyAttatchment" {
  source                    = "../../aws/iam/genericIamRolePolicyAttachment"
  awsRegion                 = var.awsRegion
  policyAttachmentRoleName  = module.CECC.CECC_CodebuildRoleName
  policyAttachmentPolicyArn = module.updateLambdaPolicy.iamPolicyArn
}

#---

module "LFWLGSAR" {
  source                                                = "../_LFWLGSAR_lambdaFunctionWithLogGroupSecretAndRole"
  awsRegion                                             = var.awsRegion
  resourceName                                          = var.resourceName
  LFWLGSAR_LambdaFunctionArchitectures                  = var.CLCC_LFWLGSAR_LambdaFunctionArchitectures
  LFWLGSAR_LambdaFunctionCodeSigningConfigArn           = var.CLCC_LFWLGSAR_LambdaFunctionCodeSigningConfigArn
  LFWLGSAR_LambdaFunctionDeadLetterConfig               = var.CLCC_LFWLGSAR_LambdaFunctionDeadLetterConfig
  LFWLGSAR_LambdaFunctionDescription                    = var.CLCC_LFWLGSAR_LambdaFunctionDescription
  LFWLGSAR_LambdaFunctionEnvironmentVariables           = merge({
    "CODEBUILD_PROJECT_NAME" = module.CECC.CECC_CodebuildProjectName
  },var.CLCC_LFWLGSAR_LambdaFunctionEnvironmentVariables)
  LFWLGSAR_LambdaFunctionEphemeralStorage               = var.CLCC_LFWLGSAR_LambdaFunctionEphemeralStorage
  LFWLGSAR_LambdaFunctionFileSystemConfig               = var.CLCC_LFWLGSAR_LambdaFunctionFileSystemConfig
  LFWLGSAR_LambdaFunctionFilename                       = var.CLCC_LFWLGSAR_LambdaFunctionFilename
  LFWLGSAR_LambdaFunctionHandler                        = var.CLCC_LFWLGSAR_LambdaFunctionHandler
  LFWLGSAR_LambdaFunctionImageConfig                    = var.CLCC_LFWLGSAR_LambdaFunctionImageConfig
  LFWLGSAR_LambdaFunctionImageUri                       = "${module.CECC.CECC_EcrRepositoryUrl}:${var.codebuildProjectEcrRepoImageTag}"
  LFWLGSAR_LambdaFunctionKmsKeyArn                      = var.CLCC_LFWLGSAR_LambdaFunctionKmsKeyArn
  LFWLGSAR_LambdaFunctionLayers                         = var.CLCC_LFWLGSAR_LambdaFunctionLayers
  LFWLGSAR_LambdaFunctionLoggingConfig                  = var.CLCC_LFWLGSAR_LambdaFunctionLoggingConfig
  LFWLGSAR_LambdaFunctionMemorySize                     = var.CLCC_LFWLGSAR_LambdaFunctionMemorySize
  LFWLGSAR_LambdaFunctionPackageType                    = var.CLCC_LFWLGSAR_LambdaFunctionPackageType
  LFWLGSAR_LambdaFunctionPublish                        = var.CLCC_LFWLGSAR_LambdaFunctionPublish
  LFWLGSAR_LambdaFunctionReservedConcurrentExecutions   = var.CLCC_LFWLGSAR_LambdaFunctionReservedConcurrentExecutions
  LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy = var.CLCC_LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy
  LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds    = var.CLCC_LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds
  LFWLGSAR_LambdaFunctionRuntime                        = var.CLCC_LFWLGSAR_LambdaFunctionRuntime
  LFWLGSAR_LambdaFunctionS3Bucket                       = var.CLCC_LFWLGSAR_LambdaFunctionS3Bucket
  LFWLGSAR_LambdaFunctionS3Key                          = var.CLCC_LFWLGSAR_LambdaFunctionS3Key
  LFWLGSAR_LambdaFunctionS3ObjectVersion                = var.CLCC_LFWLGSAR_LambdaFunctionS3ObjectVersion
  LFWLGSAR_LambdaFunctionSkipDestroy                    = var.CLCC_LFWLGSAR_LambdaFunctionSkipDestroy
  LFWLGSAR_LambdaFunctionSourceCodeHash                 = var.CLCC_LFWLGSAR_LambdaFunctionSourceCodeHash
  LFWLGSAR_LambdaFunctionSnapStart                      = var.CLCC_LFWLGSAR_LambdaFunctionSnapStart
  projectName                                           = var.projectName
  creator                                               = var.creator
  deployedDate                                          = var.deployedDate
  additionalTags                                        = var.additionalTags
  LFWLGSAR_LambdaFunctionTimeout                        = var.CLCC_LFWLGSAR_LambdaFunctionTimeout
  LFWLGSAR_LambdaFunctionTracingConfig                  = var.CLCC_LFWLGSAR_LambdaFunctionTracingConfig
  LFWLGSAR_LambdaFunctionVpcConfig                      = var.CLCC_LFWLGSAR_LambdaFunctionVpcConfig
  LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion    = var.CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion
  LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy           = var.CLCC_LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy
  LFWLGSAR_LambdaFunctionRoleDescription                = var.CLCC_LFWLGSAR_LambdaFunctionRoleDescription
  LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies       = var.CLCC_LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies
  LFWLGSAR_LambdaFunctionRoleMaxSessionDuration         = var.CLCC_LFWLGSAR_LambdaFunctionRoleMaxSessionDuration
  LFWLGSAR_LambdaFunctionRoleNamePrefix                 = var.CLCC_LFWLGSAR_LambdaFunctionRoleNamePrefix
  LFWLGSAR_LambdaFunctionRolePath                       = var.CLCC_LFWLGSAR_LambdaFunctionRolePath
  LFWLGSAR_LambdaFunctionRolePermissionsBoundary        = var.CLCC_LFWLGSAR_LambdaFunctionRolePermissionsBoundary
  LFWLGSAR_LambdaPolicyDescription                      = var.CLCC_LFWLGSAR_LambdaPolicyDescription
  LFWLGSAR_LambdaPolicyNamePrefix                       = var.CLCC_LFWLGSAR_LambdaPolicyNamePrefix
  LFWLGSAR_LambdaPolicyPath                             = var.CLCC_LFWLGSAR_LambdaPolicyPath
  LFWLGSAR_LambdaPolicyVersion                          = var.CLCC_LFWLGSAR_LambdaPolicyVersion
  LFWLGSAR_LambdaPolicyDocumentStatements               = var.CLCC_LFWLGSAR_LambdaPolicyDocumentStatements
  LFWLGSAR_SecretDescription                            = var.CLCC_LFWLGSAR_SecretDescription
  LFWLGSAR_SecretKmsKeyId                               = var.CLCC_LFWLGSAR_SecretKmsKeyId
  LFWLGSAR_SecretNamePrefix                             = var.CLCC_LFWLGSAR_SecretNamePrefix
  LFWLGSAR_SecretPolicy                                 = var.CLCC_LFWLGSAR_SecretPolicy
  LFWLGSAR_SecretRecoveryWindowInDays                   = var.CLCC_LFWLGSAR_SecretRecoveryWindowInDays
  LFWLGSAR_SecretReplica                                = var.CLCC_LFWLGSAR_SecretReplica
  LFWLGSAR_SecretForceSecretOverwrite                   = var.CLCC_LFWLGSAR_SecretForceSecretOverwrite
  LFWLGSAR_SecretVersionSecretString                    = var.CLCC_LFWLGSAR_SecretVersionSecretString
  LFWLGSAR_SecretVersionSecretBinary                    = var.CLCC_LFWLGSAR_SecretVersionSecretBinary
  LFWLGSAR_SecretVersionStages                          = var.CLCC_LFWLGSAR_SecretVersionStages
  LFWLGSAR_SecretPolicyDescription                      = var.CLCC_LFWLGSAR_SecretPolicyDescription
  LFWLGSAR_SecretPolicyNamePrefix                       = var.CLCC_LFWLGSAR_SecretPolicyNamePrefix
  LFWLGSAR_SecretPolicyPath                             = var.CLCC_LFWLGSAR_SecretPolicyPath
  LFWLGSAR_SecretPolicyVersion                          = var.CLCC_LFWLGSAR_SecretPolicyVersion
  LFWLGSAR_SecretPolicyDocumentStatements               = var.CLCC_LFWLGSAR_SecretPolicyDocumentStatements
  LFWLGSAR_LogGroupNamePrefix                           = var.CLCC_LFWLGSAR_LogGroupNamePrefix
  LFWLGSAR_LogGroupSkipDestroy                          = var.CLCC_LFWLGSAR_LogGroupSkipDestroy
  LFWLGSAR_LogGroupClass                                = var.CLCC_LFWLGSAR_LogGroupClass
  LFWLGSAR_LogGroupRetentionInDays                      = var.CLCC_LFWLGSAR_LogGroupRetentionInDays
  LFWLGSAR_LogGroupKmsKeyId                             = var.CLCC_LFWLGSAR_LogGroupKmsKeyId
}

#---
