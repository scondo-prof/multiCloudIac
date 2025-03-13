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
  secretKmsKeyId             = var.SWV_SecretKmsKeyId
  resourceName               = var.resourceName
  secretPolicy               = var.SWV_SecretPolicy
  secretRecoveryWindowInDays = var.SWV_SecretRecoveryWindowInDays
  secretReplica              = var.SWV_SecretReplica
  secretForceSecretOverwrite = var.SWV_SecretForceSecretOverwrite
  projectName                = var.projectName
  createdBy                  = var.createdBy
  deployedDate               = var.deployedDate
  tfModule                   = var.tfModule
  additionalTags             = var.additionalTags
}

module "secretVersion" {
  source = "../genericSecretVersion"

  awsRegion                 = var.awsRegion
  secretVersionSecretId     = module.secret.secretArn
  secretVersionSecretString = var.SWV_SecretVersionSecretString
  secretVersionSecretBinary = var.SWV_SecretVersionSecretBinary
  secretVersionStages       = var.SWV_SecretVersionStages
}