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

resource "aws_sns_topic_subscription" "snsTopicSubscription" {
  endpoint                        = var.snsTopicSubscriptionEndpoint
  protocol                        = var.snsTopicSubscriptionProtocal
  subscription_role_arn           = var.snsTopicSubscriptionSubscriptionRoleArn
  topic_arn                       = var.snsTopicSubscriptionTopicArn
  confirmation_timeout_in_minutes = var.snsTopicSubscriptionConfirmationTimeoutInMinutes
  delivery_policy                 = var.snsTopicSubscriptionDeliveryPolicy != null ? jsonencode(var.snsTopicSubscriptionDeliveryPolicy) : null
  endpoint_auto_confirms          = var.snsTopicSubscriptionEndpointAutoConfirms
  filter_policy                   = var.snsTopicSubscriptionFilterPolicy != null ? jsonencode(var.snsTopicSubscriptionFilterPolicy) : null
  filter_policy_scope             = var.snsTopicSubscriptionFilterPolicyScope
  raw_message_delivery            = var.snsTopicSubscriptionRawMessageDelivery
  redrive_policy                  = var.snsTopicSubscriptionRedrivePolicy != null ? jsonencode(var.snsTopicSubscriptionRedrivePolicy) : null
  replay_policy                   = var.snsTopicSubscriptionReplayPolicy != null ? jsonencode(var.snsTopicSubscriptionReplayPolicy) : null
}
