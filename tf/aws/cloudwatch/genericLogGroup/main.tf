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

resource "aws_cloudwatch_log_group" "logGroup" {
  name              = "${var.resourceName}-log-group"
  name_prefix       = var.logGroupNamePrefix
  skip_destroy      = var.logGroupSkipDestroy
  log_group_class   = var.logGroupClass
  retention_in_days = var.logGroupRetentionInDays
  kms_key_id        = var.logGroupKmsKeyId
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}