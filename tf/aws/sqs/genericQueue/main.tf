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
  deduplication_scope               = var.queueDeduplicationScope
  delay_seconds                     = var.queueDelaySeconds
  fifo_queue                        = var.queueFifoQueue
  fifo_throughput_limit             = var.queueFifoThroughputLimit
  kms_data_key_reuse_period_seconds = var.queueKmsDataKeyReusePeriodSeconds
  kms_master_key_id                 = var.queueKmsMasterKeyId
  max_message_size                  = var.queueMaxMessageSize
  message_retention_seconds         = var.queueMessageRetentionSeconds
  name                              = var.queueName
  name_prefix                       = var.queueNamePrefix
  policy = length(var.queuePolicyDocumentStatements) > 0 ? jsonencode({
    Version   = "2012-10-17"
    Statement = var.queuePolicyDocumentStatements
  }) : null
  receive_wait_time_seconds = var.queueRecieveWaitTimeSeconds
  redrive_allow_policy      = var.queueRedriveAllowPolicy
  redrive_policy            = var.queueRedrivePolicy
  sqs_managed_sse_enabled   = var.queueSqsManagedSseEnabled

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)

  visibility_timeout_seconds = var.queueVisibilityTimeoutSeconds
}