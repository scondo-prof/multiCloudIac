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
    for_each = var.bucketNotificationLambdaFunction != null ? [var.bucketNotificationLambdaFunction] : []
    content {
      events              = lambda_function.value["events"]
      filter_prefix       = lambda_function.value["filter_prefix"]
      filter_suffix       = lambda_function.value["filter_suffix"]
      id                  = lambda_function.value["id"]
      lambda_function_arn = lambda_function.value["lambda_function_arn"]
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