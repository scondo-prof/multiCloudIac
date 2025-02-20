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

resource "aws_sqs_queue" "queue" {
  content_based_deduplication       = var.queueContentBasedDeduplication
  deduplication_scope               = var.queue
  delay_seconds                     = var.queue
  fifo_queue                        = var.queue
  fifo_throughput_limit             = var.queue
  kms_data_key_reuse_period_seconds = var.queue
  kms_master_key_id                 = var.queue
  max_message_size                  = var.queue
  message_retention_seconds         = var.queue
  name                              = var.queue
  name_prefix                       = var.queue
  policy                            = var.queue
  receive_wait_time_seconds         = var.queue
  redrive_allow_policy              = var.queue
  redrive_policy                    = var.queue
  sqs_managed_sse_enabled           = var.queue

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    Name         = "${var.resourceName}-ec2"
    TfModule     = var.tfModule
  }, var.additionalTags)

  visibility_timeout_seconds = var.queue
}