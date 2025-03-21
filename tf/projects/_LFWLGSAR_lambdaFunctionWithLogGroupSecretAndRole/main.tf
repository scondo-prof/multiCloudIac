
module "lambdaFunction" {
  source                             = "../../aws/lambda/genericLambdaFunction"
  awsRegion                          = var.awsRegion
  resourceName                       = var.resourceName
  lambdaFunctionRole                 = module.lambdaFunctionRole.iamRoleArn #var.LFWLGSAR_LambdaFunctionsRole
  lambdaFunctionArchitectures        = var.LFWLGSAR_LambdaFunctionsArchitectures
  lambdaFunctionCodeSigningConfigArn = var.LFWLGSAR_LambdaFunctionsCodeSigningConfigArn
  lambdaFunctionDeadLetterConfig     = var.LFWLGSAR_LambdaFunctionsDeadLetterConfig
  lambdaFunctionDescription          = var.LFWLGSAR_LambdaFunctionsDescription
  lambdaFunctionEnvironment = {
    variables = merge({
      SECRET_NAME : module.secret.secretArn
    }, var.LFWLGSAR_LambdaFunctionsEnvironment)
  }
  lambdaFunctionEphemeralStorage = var.LFWLGSAR_LambdaFunctionsEphemeralStorage
  lambdaFunctionFileSystemConfig = var.LFWLGSAR_LambdaFunctionsFileSystemConfig
  lambdaFunctionFilename         = var.LFWLGSAR_LambdaFunctionsFilename
  lambdaFunctionHandler          = var.LFWLGSAR_LambdaFunctionsHandler
  lambdaFunctionImageConfig      = var.LFWLGSAR_LambdaFunctionsImageConfig
  lambdaFunctionImageUri         = var.LFWLGSAR_LambdaFunctionsImageUri
  lambdaFunctionKmsKeyArn        = var.LFWLGSAR_LambdaFunctionsKmsKeyArn
  lambdaFunctionLayers           = var.LFWLGSAR_LambdaFunctionsLayers
  lambdaFunctionLoggingConfig = merge({
    log_format = "JSON"
    log_group  = module.logGroup.logGroupName
  }, var.LFWLGSAR_LambdaFunctionsLoggingConfig)
  lambdaFunctionMemorySize                     = var.LFWLGSAR_LambdaFunctionsMemorySize
  lambdaFunctionPackageType                    = var.LFWLGSAR_LambdaFunctionsPackageType
  lambdaFunctionPublish                        = var.LFWLGSAR_LambdaFunctionsPublish
  lambdaFunctionReservedConcurrentExecutions   = var.LFWLGSAR_LambdaFunctionsReservedConcurrentExecutions
  lambdaFunctionReplaceSecurityGroupsOnDestroy = var.LFWLGSAR_LambdaFunctionsReplaceSecurityGroupsOnDestroy
  lambdaFunctionReplacementSecurityGroupIds    = var.LFWLGSAR_LambdaFunctionsReplacementSecurityGroupIds
  lambdaFunctionRuntime                        = var.LFWLGSAR_LambdaFunctionsRuntime
  lambdaFunctionS3Bucket                       = var.LFWLGSAR_LambdaFunctionsS3Bucket
  lambdaFunctionS3Key                          = var.LFWLGSAR_LambdaFunctionsS3Key
  lambdaFunctionS3ObjectVersion                = var.LFWLGSAR_LambdaFunctionsS3ObjectVersion
  lambdaFunctionSkipDestroy                    = var.LFWLGSAR_LambdaFunctionsSkipDestroy
  lambdaFunctionSourceCodeHash                 = var.LFWLGSAR_LambdaFunctionsSourceCodeHash
  lambdaFunctionSnapStart                      = var.LFWLGSAR_LambdaFunctionsSnapStart
  projectName                                  = var.projectName
  createdBy                                    = var.createdBy
  deployedDate                                 = var.deployedDate
  tfModule                                     = var.tfModule
  additionalTags                               = var.additionalTags
  lambdaFunctionTimeout                        = var.LFWLGSAR_LambdaFunctionsTimeout
  lambdaFunctionTracingConfig                  = var.LFWLGSAR_LambdaFunctionsTracingConfig
  lambdaFunctionVpcConfig                      = var.LFWLGSAR_LambdaFunctionsVpcConfig
}

#---

module "lambdaFunctionRole" {
  source                         = "../../aws/iam/genericIamRole"
  awsRegion                      = var.awsRegion
  iamRoleAssumeRolePolicyVersion = var.LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion
  iamRoleAssumeRolePolicy = concat([{
    Action = ["sts:AssumeRole"]
    Effect = "Allow"
    Principal = {
      "Service" = ["lambda.amazonaws.com"]
    }
  }], var.LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy)
  iamRoleDescription          = var.LFWLGSAR_LambdaFunctionRoleDescription
  iamRoleForceDetatchPolicies = var.LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies
  iamRoleMaxSessionDuration   = var.LFWLGSAR_LambdaFunctionRoleMaxSessionDuration
  resourceName                = "${var.resourceName}-lambda"
  iamRoleNamePrefix           = var.LFWLGSAR_LambdaFunctionRoleNamePrefix
  iamRolePath                 = var.LFWLGSAR_LambdaFunctionRolePath
  iamRolePermissionsBoundary  = var.LFWLGSAR_LambdaFunctionRolePermissionsBoundary
  projectName                 = var.projectName
  createdBy                   = var.createdBy
  deployedDate                = var.deployedDate
  tfModule                    = var.tfModule
  additionalTags              = var.additionalTags
}

#---

module "lambdaGenericPolicy" {
  source               = "../../aws/iam/genericIamPolicy"
  awsRegion            = var.awsRegion
  iamPolicyDescription = var.LFWLGSAR_LambdaGenericPolicyDescription
  iamPolicyNamePrefix  = var.LFWLGSAR_LambdaGenericPolicyNamePrefix
  resourceName         = "${var.resourceName}-lambda-generic"
  iamPolicyPath        = var.LFWLGSAR_LambdaGenericPolicyPath
  iamPolicyVersion     = var.LFWLGSAR_LambdaGenericPolicyVersion
  iamPolicyDocumentStatements = concat([
    {
      Action = [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
      Effect = "Allow"
      Resource = [
        "${module.lambdaLogGroup.logGroupArn}*"
      ]
      Sid = "cloudwatchLogs"
    }
  ], var.LFWLGSAR_LambdaGenericPolicyDocumentStatements)
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "lambdaGenericPolicyAttachment" {
  source                    = "../../aws/iam/genericIamRolePolicyAttachment"
  awsRegion                 = var.awsRegion
  policyAttachmentRoleName  = module.lambdaFunctionRole.iamRoleName
  policyAttachmentPolicyArn = module.lambdaGenericPolicy.iamPolicyArn
}

#---

module "lambdaSecret" {
  source                     = "../../aws/secretsmanager/genericSecret"
  awsRegion                  = var.awsRegion
  secretDescription          = var.LFWLGSAR_LambdaSecretDescription
  secretKmsKeyId             = var.LFWLGSAR_LambdaSecretKmsKeyId
  secretNamePrefix           = var.LFWLGSAR_LambdaSecretNamePrefix
  resourceName               = "${var.resourceName}-lambda"
  secretPolicy               = var.LFWLGSAR_LambdaSecretPolicy
  secretRecoveryWindowInDays = var.LFWLGSAR_LambdaSecretRecoveryWindowInDays
  secretReplica              = var.LFWLGSAR_LambdaSecretReplica
  secretForceSecretOverwrite = var.LFWLGSAR_LambdaSecretForceSecretOverwrite
  projectName                = var.projectName
  createdBy                  = var.createdBy
  deployedDate               = var.deployedDate
  tfModule                   = var.tfModule
  additionalTags             = var.additionalTags
}

#---

module "lambdaSecretVersion" {
  source                    = "../../aws/secretsmanager/genericSecretVersion"
  awsRegion                 = var.awsRegion
  secretVersionSecretId     = module.lambdaSecret.secretArn
  secretVersionSecretString = var.LFWLGSAR_LambdaSecretVersionSecretString
  secretVersionSecretBinary = var.LFWLGSAR_LambdaSecretVersionSecretBinary
  secretVersionStages       = var.LFWLGSAR_LambdaSecretVersionStages
}

#---

module "lambdaSecretPolicy" {
  source               = "../../aws/iam/genericIamPolicy"
  awsRegion            = var.awsRegion
  iamPolicyDescription = var.LFWLGSAR_LambdaSecretPolicyDescription
  iamPolicyNamePrefix  = var.LFWLGSAR_LambdaSecretPolicyNamePrefix
  resourceName         = "${var.resourceName}-lambda-secret"
  iamPolicyPath        = var.LFWLGSAR_LambdaSecretPolicyPath
  iamPolicyVersion     = var.LFWLGSAR_LambdaSecretPolicyVersion
  iamPolicyDocumentStatements = concat([
    {
      Action = [
        "secretsmanager:GetSecretValue",
        "secretsmanager:DescribeSecret",
        "secretsmanager:ListSecretVersionIds"
      ]
      Effect = "Allow"
      Resource = [
        module.lambdaSecret.secretArn
      ]
      Sid = "secretPermissions"
    },
    {
      Action = [
        "secretsmanager:ListSecrets"
      ]
      Effect = "Allow"
      Resource = [
        "*"
      ]
      Sid = "listSecrets"
    }
  ], var.LFWLGSAR_LambdaSecretPolicyDocumentStatements)
  projectName    = var.projectName
  createdBy      = var.createdBy
  deployedDate   = var.deployedDate
  tfModule       = var.tfModule
  additionalTags = var.additionalTags
}

#---

module "lambdaSecretPolicyAttachment" {
  source                    = "../../aws/iam/genericIamRolePolicyAttachment"
  awsRegion                 = var.awsRegion
  policyAttachmentRoleName  = module.lambdaFunctionRole.iamRoleName
  policyAttachmentPolicyArn = module.lambdaSecretPolicy.iamPolicyArn
}

#---

module "lambdaLogGroup" {
  source                  = "../../aws/cloudwatch/genericLogGroup"
  awsRegion               = var.awsRegion
  resourceName            = "${var.resourceName}-lambda"
  logGroupNamePrefix      = var.LFWLGSAR_LambdaLogGroupNamePrefix
  logGroupSkipDestroy     = var.LFWLGSAR_LambdaLogGroupSkipDestroy
  logGroupClass           = var.LFWLGSAR_LambdaLogGroupClass
  logGroupRetentionInDays = var.LFWLGSAR_LambdaLogGroupRetentionInDays
  logGroupKmsKeyId        = var.LFWLGSAR_LambdaLogGroupKmsKeyId
  projectName             = var.projectName
  createdBy               = var.createdBy
  deployedDate            = var.deployedDate
  tfModule                = var.tfModule
  additionalTags          = var.additionalTags
}

#---