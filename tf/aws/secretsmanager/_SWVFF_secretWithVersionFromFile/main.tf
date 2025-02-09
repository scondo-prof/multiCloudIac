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

module "secret" {
  source = "../genericSecret"

  awsRegion                  = var.awsRegion
  secretKmsKeyId             = var.SWVFF_SecretKmsKeyId
  resourceName               = var.resourceName
  secretPolicy               = var.SWVFF_SecretPolicy
  secretRecoveryWindowInDays = var.SWVFF_SecretRecoveryWindowInDays
  secretReplica              = var.SWVFF_SecretReplica
  secretForceSecretOverwrite = var.SWVFF_SecretForceSecretOverwrite
  projectName                = var.projectName
  creator                    = var.creator
  deployedDate               = var.deployedDate
  additionalTags             = var.additionalTags
}

module "secretVersion" {
  source = "../genericSecretVersionFromFile"

  awsRegion                     = var.awsRegion
  secretVersionSecretId         = module.secret.secretArn
  secretVersionSecretStringFile = var.SWVFF_SecretVersionSecretStringFile
  secretVersionSecretBinary     = var.SWVFF_SecretVersionSecretBinary
  secretVersionStages           = var.SWVFF_SecretVersionStages
}