
    module "lambdaFunction" {
  source = "../../aws/lambda/genericLambdaFunction"
awsRegion = var.awsRegion
resourceName = var.resourceName
lambdaFunctionRole = var.LFWLGSAR_LambdaFunctionsRole
lambdaFunctionArchitectures = var.LFWLGSAR_LambdaFunctionsArchitectures
lambdaFunctionCodeSigningConfigArn = var.LFWLGSAR_LambdaFunctionsCodeSigningConfigArn
lambdaFunctionDeadLetterConfig = var.LFWLGSAR_LambdaFunctionsDeadLetterConfig
lambdaFunctionDescription = var.LFWLGSAR_LambdaFunctionsDescription
lambdaFunctionEnvironment = var.LFWLGSAR_LambdaFunctionsEnvironment
lambdaFunctionEphemeralStorage = var.LFWLGSAR_LambdaFunctionsEphemeralStorage
lambdaFunctionFileSystemConfig = var.LFWLGSAR_LambdaFunctionsFileSystemConfig
lambdaFunctionFilename = var.LFWLGSAR_LambdaFunctionsFilename
lambdaFunctionHandler = var.LFWLGSAR_LambdaFunctionsHandler
lambdaFunctionImageConfig = var.LFWLGSAR_LambdaFunctionsImageConfig
lambdaFunctionImageUri = var.LFWLGSAR_LambdaFunctionsImageUri
lambdaFunctionKmsKeyArn = var.LFWLGSAR_LambdaFunctionsKmsKeyArn
lambdaFunctionLayers = var.LFWLGSAR_LambdaFunctionsLayers
lambdaFunctionLoggingConfig = var.LFWLGSAR_LambdaFunctionsLoggingConfig
lambdaFunctionMemorySize = var.LFWLGSAR_LambdaFunctionsMemorySize
lambdaFunctionPackageType = var.LFWLGSAR_LambdaFunctionsPackageType
lambdaFunctionPublish = var.LFWLGSAR_LambdaFunctionsPublish
lambdaFunctionReservedConcurrentExecutions = var.LFWLGSAR_LambdaFunctionsReservedConcurrentExecutions
lambdaFunctionReplaceSecurityGroupsOnDestroy = var.LFWLGSAR_LambdaFunctionsReplaceSecurityGroupsOnDestroy
lambdaFunctionReplacementSecurityGroupIds = var.LFWLGSAR_LambdaFunctionsReplacementSecurityGroupIds
lambdaFunctionRuntime = var.LFWLGSAR_LambdaFunctionsRuntime
lambdaFunctionS3Bucket = var.LFWLGSAR_LambdaFunctionsS3Bucket
lambdaFunctionS3Key = var.LFWLGSAR_LambdaFunctionsS3Key
lambdaFunctionS3ObjectVersion = var.LFWLGSAR_LambdaFunctionsS3ObjectVersion
lambdaFunctionSkipDestroy = var.LFWLGSAR_LambdaFunctionsSkipDestroy
lambdaFunctionSourceCodeHash = var.LFWLGSAR_LambdaFunctionsSourceCodeHash
lambdaFunctionSnapStart = var.LFWLGSAR_LambdaFunctionsSnapStart
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
lambdaFunctionTimeout = var.LFWLGSAR_LambdaFunctionsTimeout
lambdaFunctionTracingConfig = var.LFWLGSAR_LambdaFunctionsTracingConfig
lambdaFunctionVpcConfig = var.LFWLGSAR_LambdaFunctionsVpcConfig
}

#---

    module "lambdaFunctionRole" {
  source = "../../aws/iam/genericIamRole"
awsRegion = var.awsRegion
iamRoleAssumeRolePolicyVersion = var.LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion
iamRoleAssumeRolePolicy = var.LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy
iamRoleDescription = var.LFWLGSAR_LambdaFunctionRoleDescription
iamRoleForceDetatchPolicies = var.LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies
iamRoleMaxSessionDuration = var.LFWLGSAR_LambdaFunctionRoleMaxSessionDuration
resourceName = var.resourceName
iamRoleNamePrefix = var.LFWLGSAR_LambdaFunctionRoleNamePrefix
iamRolePath = var.LFWLGSAR_LambdaFunctionRolePath
iamRolePermissionsBoundary = var.LFWLGSAR_LambdaFunctionRolePermissionsBoundary
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---

    module "lambdaGenericPolicy" {
  source = "../../aws/iam/genericIamPolicy"
awsRegion = var.awsRegion
iamPolicyDescription = var.LFWLGSAR_LambdaGenericPolicyDescription
iamPolicyNamePrefix = var.LFWLGSAR_LambdaGenericPolicyNamePrefix
resourceName = var.resourceName
iamPolicyPath = var.LFWLGSAR_LambdaGenericPolicyPath
iamPolicyVersion = var.LFWLGSAR_LambdaGenericPolicyVersion
iamPolicyDocumentStatements = var.LFWLGSAR_LambdaGenericPolicyDocumentStatements
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---

    module "lambdaGenericPolicyAttachment" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"
awsRegion = var.awsRegion
policyAttachmentRoleName = var.LFWLGSAR_LambdaGenericPolicyAttachmentRoleName
policyAttachmentPolicyArn = var.LFWLGSAR_LambdaGenericPolicyAttachmentPolicyArn
}

#---

    module "lambdaSecret" {
  source = "../../aws/secretsmanager/genericSecret"
awsRegion = var.awsRegion
secretDescription = var.LFWLGSAR_LambdaSecretDescription
secretKmsKeyId = var.LFWLGSAR_LambdaSecretKmsKeyId
secretNamePrefix = var.LFWLGSAR_LambdaSecretNamePrefix
resourceName = var.resourceName
secretPolicy = var.LFWLGSAR_LambdaSecretPolicy
secretRecoveryWindowInDays = var.LFWLGSAR_LambdaSecretRecoveryWindowInDays
secretReplica = var.LFWLGSAR_LambdaSecretReplica
secretForceSecretOverwrite = var.LFWLGSAR_LambdaSecretForceSecretOverwrite
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---

    module "lambdaSecretVersion" {
  source = "../../aws/secretsmanager/genericSecretVersion"
awsRegion = var.awsRegion
secretVersionSecretId = var.LFWLGSAR_LambdaSecretVersionSecretId
secretVersionSecretString = var.LFWLGSAR_LambdaSecretVersionSecretString
secretVersionSecretBinary = var.LFWLGSAR_LambdaSecretVersionSecretBinary
secretVersionStages = var.LFWLGSAR_LambdaSecretVersionStages
}

#---

    module "lambdaSecretPolicy" {
  source = "../../aws/iam/genericIamPolicy"
awsRegion = var.awsRegion
iamPolicyDescription = var.LFWLGSAR_LambdaSecretPolicyDescription
iamPolicyNamePrefix = var.LFWLGSAR_LambdaSecretPolicyNamePrefix
resourceName = var.resourceName
iamPolicyPath = var.LFWLGSAR_LambdaSecretPolicyPath
iamPolicyVersion = var.LFWLGSAR_LambdaSecretPolicyVersion
iamPolicyDocumentStatements = var.LFWLGSAR_LambdaSecretPolicyDocumentStatements
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---

    module "lambdaSecretPolicyAttachment" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"
awsRegion = var.awsRegion
policyAttachmentRoleName = var.LFWLGSAR_LambdaSecretPolicyAttachmentRoleName
policyAttachmentPolicyArn = var.LFWLGSAR_LambdaSecretPolicyAttachmentPolicyArn
}

#---

    module "lambdaLogGroup" {
  source = "../../aws/cloudwatch/genericLogGroup"
awsRegion = var.awsRegion
resourceName = var.resourceName
logGroupNamePrefix = var.LFWLGSAR_LambdaLogGroupNamePrefix
logGroupSkipDestroy = var.LFWLGSAR_LambdaLogGroupSkipDestroy
logGroupClass = var.LFWLGSAR_LambdaLogGroupClass
logGroupRetentionInDays = var.LFWLGSAR_LambdaLogGroupRetentionInDays
logGroupKmsKeyId = var.LFWLGSAR_LambdaLogGroupKmsKeyId
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---


# module "lambdaFunction" {
#   source = "../../aws/lambda/genericLambdaFunction"

#   awsRegion                          = var.awsRegion
#   resourceName                       = var.resourceName
#   lambdaFunctionRole                 = module.lambdaFunctionRole.iamRoleArn
#   lambdaFunctionArchitectures        = var.LFWLGSAR_LambdaFunctionArchitectures
#   lambdaFunctionCodeSigningConfigArn = var.LFWLGSAR_LambdaFunctionCodeSigningConfigArn
#   lambdaFunctionDeadLetterConfig     = var.LFWLGSAR_LambdaFunctionDeadLetterConfig
#   lambdaFunctionDescription          = var.LFWLGSAR_LambdaFunctionDescription
#   lambdaFunctionEnvironment = {
#     variables = merge({
#       SECRET_NAME : module.secret.secretArn
#     }, var.LFWLGSAR_LambdaFunctionEnvironmentVariables)
#   }
#   lambdaFunctionEphemeralStorage               = var.LFWLGSAR_LambdaFunctionEphemeralStorage
#   lambdaFunctionFileSystemConfig               = var.LFWLGSAR_LambdaFunctionFileSystemConfig
#   lambdaFunctionFilename                       = var.LFWLGSAR_LambdaFunctionFilename
#   lambdaFunctionHandler                        = var.LFWLGSAR_LambdaFunctionHandler
#   lambdaFunctionImageConfig                    = var.LFWLGSAR_LambdaFunctionImageConfig
#   lambdaFunctionImageUri                       = var.LFWLGSAR_LambdaFunctionImageUri
#   lambdaFunctionKmsKeyArn                      = var.LFWLGSAR_LambdaFunctionKmsKeyArn
#   lambdaFunctionLayers                         = var.LFWLGSAR_LambdaFunctionLayers
#   lambdaFunctionLoggingConfig                  = merge({
#     log_format = "JSON"
#     log_group = module.logGroup.logGroupName
#   },var.LFWLGSAR_LambdaFunctionLoggingConfig)
#   lambdaFunctionMemorySize                     = var.LFWLGSAR_LambdaFunctionMemorySize
#   lambdaFunctionPackageType                    = var.LFWLGSAR_LambdaFunctionPackageType
#   lambdaFunctionPublish                        = var.LFWLGSAR_LambdaFunctionPublish
#   lambdaFunctionReservedConcurrentExecutions   = var.LFWLGSAR_LambdaFunctionReservedConcurrentExecutions
#   lambdaFunctionReplaceSecurityGroupsOnDestroy = var.LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy
#   lambdaFunctionReplacementSecurityGroupIds    = var.LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds
#   lambdaFunctionRuntime                        = var.LFWLGSAR_LambdaFunctionRuntime
#   lambdaFunctionS3Bucket                       = var.LFWLGSAR_LambdaFunctionS3Bucket
#   lambdaFunctionS3Key                          = var.LFWLGSAR_LambdaFunctionS3Key
#   lambdaFunctionS3ObjectVersion                = var.LFWLGSAR_LambdaFunctionS3ObjectVersion
#   lambdaFunctionSkipDestroy                    = var.LFWLGSAR_LambdaFunctionSkipDestroy
#   lambdaFunctionSourceCodeHash                 = var.LFWLGSAR_LambdaFunctionSourceCodeHash
#   lambdaFunctionSnapStart                      = var.LFWLGSAR_LambdaFunctionSnapStart
#   projectName                                  = var.projectName
#   creator                                      = var.creator
#   deployedDate                                 = var.deployedDate
#   additionalTags                               = var.additionalTags
#   lambdaFunctionTimeout                        = var.LFWLGSAR_LambdaFunctionTimeout
#   lambdaFunctionTracingConfig                  = var.LFWLGSAR_LambdaFunctionTracingConfig
#   lambdaFunctionVpcConfig                      = var.LFWLGSAR_LambdaFunctionVpcConfig
# }

# module "lambdaFunctionRole" {
#   source = "../../aws/iam/genericIamRole"

#   awsRegion                      = var.awsRegion
#   iamRoleAssumeRolePolicyVersion = var.LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion
#   iamRoleAssumeRolePolicy = concat([{
#     Action = ["sts:AssumeRole"]
#     Effect = "Allow"
#     Principal = {
#       "Service" = ["lambda.amazonaws.com"]
#     }
#   }], var.LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy)
#   iamRoleDescription          = var.LFWLGSAR_LambdaFunctionRoleDescription
#   iamRoleForceDetatchPolicies = var.LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies
#   iamRoleMaxSessionDuration   = var.LFWLGSAR_LambdaFunctionRoleMaxSessionDuration
#   resourceName                = "${var.resourceName}-lambda"
#   iamRoleNamePrefix           = var.LFWLGSAR_LambdaFunctionRoleNamePrefix
#   iamRolePath                 = var.LFWLGSAR_LambdaFunctionRolePath
#   iamRolePermissionsBoundary  = var.LFWLGSAR_LambdaFunctionRolePermissionsBoundary
#   projectName                 = var.projectName
#   creator                     = var.creator
#   deployedDate                = var.deployedDate
#   additionalTags              = var.additionalTags
# }

# module "lambdaPolicy" {
#   source = "../../aws/iam/genericIamPolicy"

#   awsRegion            = var.awsRegion
#   iamPolicyDescription = var.LFWLGSAR_LambdaPolicyDescription
#   iamPolicyNamePrefix  = var.LFWLGSAR_LambdaPolicyNamePrefix
#   resourceName         = "${var.resourceName}-lambda-generic"
#   iamPolicyPath        = var.LFWLGSAR_LambdaPolicyPath
#   iamPolicyVersion     = var.LFWLGSAR_LambdaPolicyVersion
#   iamPolicyDocumentStatements = concat([
#     {
#       Action = [
#         "logs:CreateLogGroup",
#         "logs:CreateLogStream",
#         "logs:PutLogEvents"
#       ]
#       Effect = "Allow"
#       Resource = [
#         "${module.logGroup.logGroupArn}*"
#       ]
#       Sid = "cloudwatchLogs"
#     }
#   ], var.LFWLGSAR_LambdaPolicyDocumentStatements)
#   projectName    = var.projectName
#   creator        = var.creator
#   deployedDate   = var.deployedDate
#   additionalTags = var.additionalTags
# }

# module "attatchLambdaPolicy" {
#   source = "../../aws/iam/genericIamRolePolicyAttachment"

#   policyAttachmentRoleName  = module.lambdaFunctionRole.iamRoleName
#   policyAttachmentPolicyArn = module.lambdaPolicy.iamPolicyArn
# }

# module "secret" {
#   source = "../../aws/secretsmanager/genericSecret"

#   awsRegion                  = var.awsRegion
#   secretDescription          = var.LFWLGSAR_SecretDescription
#   secretKmsKeyId             = var.LFWLGSAR_SecretKmsKeyId
#   secretNamePrefix           = var.LFWLGSAR_SecretNamePrefix
#   resourceName               = "${var.resourceName}-lambda"
#   secretPolicy               = var.LFWLGSAR_SecretPolicy
#   secretRecoveryWindowInDays = var.LFWLGSAR_SecretRecoveryWindowInDays
#   secretReplica              = var.LFWLGSAR_SecretReplica
#   secretForceSecretOverwrite = var.LFWLGSAR_SecretForceSecretOverwrite
#   projectName                = var.projectName
#   creator                    = var.creator
#   deployedDate               = var.deployedDate
#   additionalTags             = var.additionalTags
# }

# module "secretVersion" {
#   source = "../../aws/secretsmanager/genericSecretVersion"

#   awsRegion                 = var.awsRegion
#   secretVersionSecretId     = module.secret.secretArn
#   secretVersionSecretString = var.LFWLGSAR_SecretVersionSecretString
#   secretVersionSecretBinary = var.LFWLGSAR_SecretVersionSecretBinary
#   secretVersionStages       = var.LFWLGSAR_SecretVersionStages
# }

# module "secretPolicy" {
#   source = "../../aws/iam/genericIamPolicy"

#   awsRegion            = var.awsRegion
#   iamPolicyDescription = var.LFWLGSAR_SecretPolicyDescription
#   iamPolicyNamePrefix  = var.LFWLGSAR_SecretPolicyNamePrefix
#   resourceName         = var.resourceName
#   iamPolicyPath        = var.LFWLGSAR_SecretPolicyPath
#   iamPolicyVersion     = var.LFWLGSAR_SecretPolicyVersion
#   iamPolicyDocumentStatements = concat([
#     {
#       Action = [
#         "secretsmanager:GetSecretValue",
#         "secretsmanager:DescribeSecret",
#         "secretsmanager:ListSecretVersionIds"
#       ]
#       Effect = "Allow"
#       Resource = [
#         module.secret.secretArn
#       ]
#       Sid = "secretPermissions"
#     },
#     {
#       Action = [
#         "secretsmanager:ListSecrets"
#       ]
#       Effect = "Allow"
#       Resource = [
#         "*"
#       ]
#       Sid = "listSecrets"
#     }
#   ], var.LFWLGSAR_SecretPolicyDocumentStatements)
#   projectName    = var.projectName
#   creator        = var.creator
#   deployedDate   = var.deployedDate
#   additionalTags = var.additionalTags
# }

# module "attatchSecretPolicy" {
#   source = "../../aws/iam/genericIamRolePolicyAttachment"

#   policyAttachmentRoleName  = module.lambdaFunctionRole.iamRoleName
#   policyAttachmentPolicyArn = module.secretPolicy.iamPolicyArn
# }

# module "logGroup" {
#   source = "../../aws/cloudwatch/genericLogGroup"

#   resourceName            = "${var.resourceName}-lambda"
#   logGroupNamePrefix      = var.LFWLGSAR_LogGroupNamePrefix
#   logGroupSkipDestroy     = var.LFWLGSAR_LogGroupSkipDestroy
#   logGroupClass           = var.LFWLGSAR_LogGroupClass
#   logGroupRetentionInDays = var.LFWLGSAR_LogGroupRetentionInDays
#   logGroupKmsKeyId        = var.LFWLGSAR_LogGroupKmsKeyId
#   projectName             = var.projectName
#   creator                 = var.creator
#   deployedDate            = var.deployedDate
#   additionalTags          = var.additionalTags
# }