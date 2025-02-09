terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.awsRegion
}

module "lambdaFunction" {
  source = "../../aws/lambda/genericLambdaFunction"

  awsRegion                          = var.awsRegion
  resourceName                       = var.resourceName
  lambdaFunctionRole                 = module.lambdaFunctionRole.iamRoleArn
  lambdaFunctionArchitectures        = var.LFWLGSAR_LambdaFunctionArchitectures
  lambdaFunctionCodeSigningConfigArn = var.LFWLGSAR_LambdaFunctionCodeSigningConfigArn
  lambdaFunctionDeadLetterConfig     = var.LFWLGSAR_LambdaFunctionDeadLetterConfig
  lambdaFunctionDescription          = var.LFWLGSAR_LambdaFunctionDescription
  lambdaFunctionEnvironment = {
    variables = merge({
      SECRET_NAME : module.secret.secretArn
    }, var.LFWLGSAR_LambdaFunctionEnvironmentVariables)
  }
  lambdaFunctionEphemeralStorage               = var.LFWLGSAR_LambdaFunctionEphemeralStorage
  lambdaFunctionFileSystemConfig               = var.LFWLGSAR_LambdaFunctionFileSystemConfig
  lambdaFunctionFilename                       = var.LFWLGSAR_LambdaFunctionFilename
  lambdaFunctionHandler                        = var.LFWLGSAR_LambdaFunctionHandler
  lambdaFunctionImageConfig                    = var.LFWLGSAR_LambdaFunctionImageConfig
  lambdaFunctionImageUri                       = var.LFWLGSAR_LambdaFunctionImageUri
  lambdaFunctionKmsKeyArn                      = var.LFWLGSAR_LambdaFunctionKmsKeyArn
  lambdaFunctionLayers                         = var.LFWLGSAR_LambdaFunctionLayers
  lambdaFunctionLoggingConfig                  = merge({
    log_format = "JSON"
    log_group = module.logGroup.logGroupName
  },var.LFWLGSAR_LambdaFunctionLoggingConfig)
  lambdaFunctionMemorySize                     = var.LFWLGSAR_LambdaFunctionMemorySize
  lambdaFunctionPackageType                    = var.LFWLGSAR_LambdaFunctionPackageType
  lambdaFunctionPublish                        = var.LFWLGSAR_LambdaFunctionPublish
  lambdaFunctionReservedConcurrentExecutions   = var.LFWLGSAR_LambdaFunctionReservedConcurrentExecutions
  lambdaFunctionReplaceSecurityGroupsOnDestroy = var.LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy
  lambdaFunctionReplacementSecurityGroupIds    = var.LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds
  lambdaFunctionRuntime                        = var.LFWLGSAR_LambdaFunctionRuntime
  lambdaFunctionS3Bucket                       = var.LFWLGSAR_LambdaFunctionS3Bucket
  lambdaFunctionS3Key                          = var.LFWLGSAR_LambdaFunctionS3Key
  lambdaFunctionS3ObjectVersion                = var.LFWLGSAR_LambdaFunctionS3ObjectVersion
  lambdaFunctionSkipDestroy                    = var.LFWLGSAR_LambdaFunctionSkipDestroy
  lambdaFunctionSourceCodeHash                 = var.LFWLGSAR_LambdaFunctionSourceCodeHash
  lambdaFunctionSnapStart                      = var.LFWLGSAR_LambdaFunctionSnapStart
  projectName                                  = var.projectName
  creator                                      = var.creator
  deployedDate                                 = var.deployedDate
  additionalTags                               = var.additionalTags
  lambdaFunctionTimeout                        = var.LFWLGSAR_LambdaFunctionTimeout
  lambdaFunctionTracingConfig                  = var.LFWLGSAR_LambdaFunctionTracingConfig
  lambdaFunctionVpcConfig                      = var.LFWLGSAR_LambdaFunctionVpcConfig
}

module "lambdaFunctionRole" {
  source = "../../aws/iam/genericIamRole"

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
  creator                     = var.creator
  deployedDate                = var.deployedDate
  additionalTags              = var.additionalTags
}

module "lambdaPolicy" {
  source = "../../aws/iam/genericIamPolicy"

  awsRegion            = var.awsRegion
  iamPolicyDescription = var.LFWLGSAR_LambdaPolicyDescription
  iamPolicyNamePrefix  = var.LFWLGSAR_LambdaPolicyNamePrefix
  resourceName         = "${var.resourceName}-lambda"
  iamPolicyPath        = var.LFWLGSAR_LambdaPolicyPath
  iamPolicyVersion     = var.LFWLGSAR_LambdaPolicyVersion
  iamPolicyDocumentStatements = concat([
    {
      Action = [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
      Effect = "Allow"
      Resource = [
        "${module.logGroup.logGroupArn}*"
      ]
      Sid = "cloudwatchLogs"
    }
  ], var.LFWLGSAR_LambdaPolicyDocumentStatements)
  projectName    = var.projectName
  creator        = var.creator
  deployedDate   = var.deployedDate
  additionalTags = var.additionalTags
}

module "attatchLambdaPolicy" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"

  policyAttachmentRoleName  = module.lambdaFunctionRole.iamRoleName
  policyAttachmentPolicyArn = module.lambdaPolicy.iamPolicyArn
}

module "secret" {
  source = "../../aws/secretsmanager/genericSecret"

  awsRegion                  = var.awsRegion
  secretDescription          = var.LFWLGSAR_SecretDescription
  secretKmsKeyId             = var.LFWLGSAR_SecretKmsKeyId
  secretNamePrefix           = var.LFWLGSAR_SecretNamePrefix
  resourceName               = "${var.resourceName}-lambda"
  secretPolicy               = var.LFWLGSAR_SecretPolicy
  secretRecoveryWindowInDays = var.LFWLGSAR_SecretRecoveryWindowInDays
  secretReplica              = var.LFWLGSAR_SecretReplica
  secretForceSecretOverwrite = var.LFWLGSAR_SecretForceSecretOverwrite
  projectName                = var.projectName
  creator                    = var.creator
  deployedDate               = var.deployedDate
  additionalTags             = var.additionalTags
}

module "secretVersion" {
  source = "../../aws/secretsmanager/genericSecretVersion"

  awsRegion                 = var.awsRegion
  secretVersionSecretId     = module.secret.secretArn
  secretVersionSecretString = var.LFWLGSAR_SecretVersionSecretString
  secretVersionSecretBinary = var.LFWLGSAR_SecretVersionSecretBinary
  secretVersionStages       = var.LFWLGSAR_SecretVersionStages
}

module "secretPolicy" {
  source = "../../aws/iam/genericIamPolicy"

  awsRegion            = var.awsRegion
  iamPolicyDescription = var.LFWLGSAR_SecretPolicyDescription
  iamPolicyNamePrefix  = var.LFWLGSAR_SecretPolicyNamePrefix
  resourceName         = var.resourceName
  iamPolicyPath        = var.LFWLGSAR_SecretPolicyPath
  iamPolicyVersion     = var.LFWLGSAR_SecretPolicyVersion
  iamPolicyDocumentStatements = concat([
    {
      Action = [
        "secretsmanager:GetSecretValue",
        "secretsmanager:DescribeSecret",
        "secretsmanager:ListSecretVersionIds"
      ]
      Effect = "Allow"
      Resource = [
        module.secret.secretArn
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
  ], var.LFWLGSAR_SecretPolicyDocumentStatements)
  projectName    = var.projectName
  creator        = var.creator
  deployedDate   = var.deployedDate
  additionalTags = var.additionalTags
}

module "attatchSecretPolicy" {
  source = "../../aws/iam/genericIamRolePolicyAttachment"

  policyAttachmentRoleName  = module.lambdaFunctionRole.iamRoleName
  policyAttachmentPolicyArn = module.secretPolicy.iamPolicyArn
}

module "logGroup" {
  source = "../../aws/cloudwatch/genericLogGroup"

  resourceName            = "${var.resourceName}-lambda"
  logGroupNamePrefix      = var.LFWLGSAR_LogGroupNamePrefix
  logGroupSkipDestroy     = var.LFWLGSAR_LogGroupSkipDestroy
  logGroupClass           = var.LFWLGSAR_LogGroupClass
  logGroupRetentionInDays = var.LFWLGSAR_LogGroupRetentionInDays
  logGroupKmsKeyId        = var.LFWLGSAR_LogGroupKmsKeyId
  projectName             = var.projectName
  creator                 = var.creator
  deployedDate            = var.deployedDate
  additionalTags          = var.additionalTags
}