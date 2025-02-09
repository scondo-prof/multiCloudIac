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

resource "aws_s3_bucket" "s3Bucket" {
  bucket              = "${var.resourceName}-bucket"
  bucket_prefix       = var.s3BucketPrefix
  force_destroy       = var.s3BucketForceDestroy
  object_lock_enabled = var.s3BucketObjectLockEnabled

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.additionalTags)
}