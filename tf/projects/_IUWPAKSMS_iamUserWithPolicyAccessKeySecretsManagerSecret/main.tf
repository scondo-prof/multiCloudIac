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

module "UWP" {
  source = "../../aws/iam/_UWP_userWithPolicyModule"

  awsRegion                       = var.awsRegion
  resourceName                    = var.resourceName
  UWP_IamUserPath                 = var.IUWPAKSMS_UWP_IamUserPath
  UWP_IamUserPermissionBoundary   = var.IUWPAKSMS_UWP_IamUserPermissionBoundary
  UWP_IamUserForceDestroy         = var.IUWPAKSMS_UWP_IamUserForceDestroy
  projectName                     = var.projectName
  creator                         = var.creator
  deployedDate                    = var.deployedDate
  additionalTags                  = var.additionalTags
  UWP_IamPolicyDescription        = var.IUWPAKSMS_UWP_IamPolicyDescription
  UWP_IamPolicyNamePrefix         = var.IUWPAKSMS_UWP_IamPolicyNamePrefix
  UWP_IamPolicyPath               = var.IUWPAKSMS_UWP_IamPolicyPath
  UWP_IamPolicyVersion            = var.IUWPAKSMS_UWP_IamPolicyVersion
  UWP_IamPolicyDocumentStatements = var.IUWPAKSMS_UWP_IamPolicyDocumentStatements
}

module "iamAccessKey" {
  source = "../../aws/iam/genericIamAccessKey"

  awsRegion          = var.awsRegion
  iamAccessKeyPgpKey = var.IUWPAKSMS_IamAccessKeyPgpKey
  iamAccessKeyStatus = var.IUWPAKSMS_IamAccessKeyStatus
  iamAccessKeyUser   = module.UWP.UWP_IamUserName
}

module "secret" {
  source = "../../aws/secretsmanager/genericSecret"

  awsRegion                  = var.awsRegion
  secretDescription          = var.IUWPAKSMS_SecretDescription
  secretKmsKeyId             = var.IUWPAKSMS_SecretKmsKeyId
  secretNamePrefix           = var.IUWPAKSMS_SecretNamePrefix
  resourceName               = "${var.resourceName}-user-creds"
  secretPolicy               = var.IUWPAKSMS_SecretPolicy
  secretRecoveryWindowInDays = var.IUWPAKSMS_SecretRecoveryWindowInDays
  secretReplica              = var.IUWPAKSMS_SecretReplica
  secretForceSecretOverwrite = var.IUWPAKSMS_SecretForceSecretOverwrite
  projectName                = var.projectName
  creator                    = var.creator
  deployedDate               = var.deployedDate
  additionalTags             = var.additionalTags
}

module "secretVersion" {
  source = "../../aws/secretsmanager/genericSecretVersion"

  awsRegion             = var.awsRegion
  secretVersionSecretId = module.secret.secretArn
  secretVersionSecretString = merge({
    aws_access_key_id     = module.iamAccessKey.iamAccessKeyId
    aws_access_secret_key = module.iamAccessKey.iamAccessKeySecret
    iam_user_name         = module.UWP.UWP_IamUserName
  }, var.IUWPAKSMS_SecretVersionSecretString)
  secretVersionSecretBinary = var.IUWPAKSMS_SecretVersionSecretBinary
  secretVersionStages       = var.IUWPAKSMS_SecretVersionStages
}