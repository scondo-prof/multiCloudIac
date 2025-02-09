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

resource "aws_s3_bucket_versioning" "s3BucketVersioning" {
  bucket = var.s3BucketVersioningBucket

  versioning_configuration {
    status     = var.s3BucketVersioningConfigurationStatus
    mfa_delete = var.s3BucketVersioningConfigurationMfaDelete
  }

  expected_bucket_owner = var.s3BucketVersioningExpectedBucketOwner
  mfa                   = var.s3BucketVersioningMfa
}