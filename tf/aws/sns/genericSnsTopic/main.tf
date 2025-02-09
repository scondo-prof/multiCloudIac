terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.awsRegion
}

resource "aws_sns_topic" "snsTopic" {
  name_prefix                              = "${var.resourceName}-topic"
  display_name                             = "${var.resourceName}-topic"
  policy                                   = var.snsTopicPolicy != null ? jsonencode(var.snsTopicPolicy) : null
  delivery_policy                          = var.snsTopicDeliveryPolicy != null ? jsonencode(var.snsTopicDeliveryPolicy) : null
  application_success_feedback_role_arn    = var.snsTopicApplicationSuccessFeedbackRoleArn
  application_success_feedback_sample_rate = var.snsTopicApplicationSuccessFeedbackSampleRate
  application_failure_feedback_role_arn    = var.snsTopicApplicationFailureFeedbackRoleArn
  http_success_feedback_role_arn           = var.snsTopicHttpSuccessFeedbackRoleArn
  http_success_feedback_sample_rate        = var.snsTopicHttpSuccessFeedbackSampleRate
  http_failure_feedback_role_arn           = var.snsTopicHttpFailureFeedbackRoleArn
  kms_master_key_id                        = var.snsTopicKmsMasterKeyId
  signature_version                        = var.snsTopicSignatureVersion
  tracing_config                           = var.snsTopicTracingConfig
  fifo_topic                               = var.snsTopicFifoTopic
  archive_policy                           = var.snsTopicArchivePolicy != null ? jsonencode(var.snsTopicArchivePolicy) : null
  content_based_deduplication              = var.snsTopicContentBasedDeduplication
  lambda_success_feedback_role_arn         = var.snsTopicLambdaSuccessFeedbackRoleArn
  lambda_success_feedback_sample_rate      = var.snsTopicLambdaSuccessFeedbackSampleRate
  lambda_failure_feedback_role_arn         = var.snsTopicLambdaFailureFeedbackRoleArn
  sqs_success_feedback_role_arn            = var.snsTopicSqsSuccessFeedbackRoleArn
  sqs_success_feedback_sample_rate         = var.snsTopicSqsSuccessFeedbackSampleRate
  sqs_failure_feedback_role_arn            = var.snsTopicSqsFailureFeedbackRoleArn
  firehose_success_feedback_role_arn       = var.snsTopicFirehoseSuccessFeedbackRoleArn
  firehose_success_feedback_sample_rate    = var.snsTopicFirehoseSuccessFeedbackSampleRate
  firehose_failure_feedback_role_arn       = var.snsTopicFirehoseFailureFeedbackRoleArn
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.snsTopicAdditionalTags)
}