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

resource "aws_secretsmanager_secret" "secret" {
  description             = var.secretDescription
  kms_key_id              = var.secretKmsKeyId
  name_prefix             = var.secretNamePrefix
  name                    = "${var.resourceName}-secret"
  policy                  = var.secretPolicy
  recovery_window_in_days = var.secretRecoveryWindowInDays
  dynamic "replica" {
    for_each = var.secretReplica != null ? [var.secretReplica] : []
    content {
      kms_key_id = replica.value["kms_key_id"]
      region     = replica.value["region"]
    }
  }
  force_overwrite_replica_secret = var.secretForceSecretOverwrite
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}