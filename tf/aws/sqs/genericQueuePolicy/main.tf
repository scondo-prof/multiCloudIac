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

resource "aws_sqs_queue_policy" "queuePolicy" {
  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = var.queuePolicyDocumentStatements
  })
  queue_url = var.queuePolicyQueueUrl
}