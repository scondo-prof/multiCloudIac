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

module "snsTopic" {
  source = "../genericSnsTopic"

  awsRegion                                    = var.awsRegion
  resourceName                                 = var.resourceName
  snsTopicPolicy                               = var.snsTopicPolicy != null ? jsonencode(var.snsTopicPolicy) : null
  snsTopicDeliveryPolicy                       = var.snsTopicDeliveryPolicy != null ? jsonencode(var.snsTopicDeliveryPolicy) : null
  snsTopicApplicationSuccessFeedbackRoleArn    = var.snsTopicApplicationSuccessFeedbackRoleArn
  snsTopicApplicationSuccessFeedbackSampleRate = var.snsTopicApplicationSuccessFeedbackSampleRate
  snsTopicApplicationFailureFeedbackRoleArn    = var.snsTopicApplicationFailureFeedbackRoleArn
  snsTopicHttpSuccessFeedbackRoleArn           = var.snsTopicHttpSuccessFeedbackRoleArn
  snsTopicHttpSuccessFeedbackSampleRate        = var.snsTopicHttpSuccessFeedbackSampleRate
  snsTopicHttpFailureFeedbackRoleArn           = var.snsTopicHttpFailureFeedbackRoleArn
  snsTopicKmsMasterKeyId                       = var.snsTopicKmsMasterKeyId
  snsTopicSignatureVersion                     = var.snsTopicSignatureVersion
  snsTopicTracingConfig                        = var.snsTopicTracingConfig
  snsTopicFifoTopic                            = var.snsTopicFifoTopic
  snsTopicArchivePolicy                        = var.snsTopicArchivePolicy != null ? jsonencode(var.snsTopicArchivePolicy) : null
  snsTopicContentBasedDeduplication            = var.snsTopicContentBasedDeduplication
  snsTopicLambdaSuccessFeedbackRoleArn         = var.snsTopicLambdaSuccessFeedbackRoleArn
  snsTopicLambdaSuccessFeedbackSampleRate      = var.snsTopicLambdaSuccessFeedbackSampleRate
  snsTopicLambdaFailureFeedbackRoleArn         = var.snsTopicLambdaFailureFeedbackRoleArn
  snsTopicSqsSuccessFeedbackRoleArn            = var.snsTopicSqsSuccessFeedbackRoleArn
  snsTopicSqsSuccessFeedbackSampleRate         = var.snsTopicSqsSuccessFeedbackSampleRate
  snsTopicSqsFailureFeedbackRoleArn            = var.snsTopicSqsFailureFeedbackRoleArn
  snsTopicFirehoseSuccessFeedbackRoleArn       = var.snsTopicFirehoseSuccessFeedbackRoleArn
  snsTopicFirehoseSuccessFeedbackSampleRate    = var.snsTopicFirehoseSuccessFeedbackSampleRate
  snsTopicFirehoseFailureFeedbackRoleArn       = var.snsTopicFirehoseFailureFeedbackRoleArn
  projectName                                  = var.projectName
  creator                                      = var.creator
  deployedDate                                 = var.deployedDate
  snsTopicAdditionalTags                       = var.snsTopicAdditionalTags
}

module "snsTopicSubscription" {
  source = "../genericSnsTopicSubscription"

  snsTopicSubscriptionEndpoint                     = var.snsTopicSubscriptionEndpoint
  snsTopicSubscriptionProtocal                     = var.snsTopicSubscriptionProtocal
  snsTopicSubscriptionSubscriptionRoleArn          = var.snsTopicSubscriptionSubscriptionRoleArn
  snsTopicSubscriptionTopicArn                     = module.snsTopic.snsTopicArn
  snsTopicSubscriptionConfirmationTimeoutInMinutes = var.snsTopicSubscriptionConfirmationTimeoutInMinutes
  snsTopicSubscriptionDeliveryPolicy               = var.snsTopicSubscriptionDeliveryPolicy != null ? jsonencode(var.snsTopicSubscriptionDeliveryPolicy) : null
  snsTopicSubscriptionEndpointAutoConfirms         = var.snsTopicSubscriptionEndpointAutoConfirms
  snsTopicSubscriptionFilterPolicy                 = var.snsTopicSubscriptionFilterPolicy != null ? jsonencode(var.snsTopicSubscriptionFilterPolicy) : null
  snsTopicSubscriptionFilterPolicyScope            = var.snsTopicSubscriptionFilterPolicyScope
  snsTopicSubscriptionRawMessageDelivery           = var.snsTopicSubscriptionRawMessageDelivery
  snsTopicSubscriptionRedrivePolicy                = var.snsTopicSubscriptionRedrivePolicy != null ? jsonencode(var.snsTopicSubscriptionRedrivePolicy) : null
  snsTopicSubscriptionReplayPolicy                 = var.snsTopicSubscriptionReplayPolicy != null ? jsonencode(var.snsTopicSubscriptionReplayPolicy) : null
}