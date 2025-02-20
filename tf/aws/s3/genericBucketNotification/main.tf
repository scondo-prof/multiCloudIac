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

resource "aws_s3_bucket_notification" "bucketNotification" {
  bucket      = var.bucketNotificationBucket
  eventbridge = var.bucketNotificationEventbridge

  dynamic "lambda_function" {
    for_each = var.bucketNotification != null ? [var.bucketNotification] : []
    content {

    }
  }

  dynamic "queue" {
    for_each = var.bucketNotification != null ? [var.bucketNotification] : []
    content {

    }
  }

  dynamic "topic" {
    for_each = var.bucketNotification != null ? [var.bucketNotification] : []
    content {

    }
  }
}