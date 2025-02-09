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


module "snsTopic" {
  source = "../../aws/sns/_TWS_topicWithSubscription"

  awsRegion                                        = var.awsRegion
  resourceName                                     = var.resourceName
  snsTopicPolicy                                   = var.ABT_SnsTopicPolicy != null ? jsonencode(var.ABT_SnsTopicPolicy) : null
  snsTopicDeliveryPolicy                           = var.ABT_SnsTopicDeliveryPolicy != null ? jsonencode(var.ABT_SnsTopicDeliveryPolicy) : null
  snsTopicApplicationSuccessFeedbackRoleArn        = var.ABT_SnsTopicApplicationSuccessFeedbackRoleArn
  snsTopicApplicationSuccessFeedbackSampleRate     = var.ABT_SnsTopicApplicationSuccessFeedbackSampleRate
  snsTopicApplicationFailureFeedbackRoleArn        = var.ABT_SnsTopicApplicationFailureFeedbackRoleArn
  snsTopicHttpSuccessFeedbackRoleArn               = var.ABT_SnsTopicHttpSuccessFeedbackRoleArn
  snsTopicHttpSuccessFeedbackSampleRate            = var.ABT_SnsTopicHttpSuccessFeedbackSampleRate
  snsTopicHttpFailureFeedbackRoleArn               = var.ABT_SnsTopicHttpFailureFeedbackRoleArn
  snsTopicKmsMasterKeyId                           = var.ABT_SnsTopicKmsMasterKeyId
  snsTopicSignatureVersion                         = var.ABT_SnsTopicSignatureVersion
  snsTopicTracingConfig                            = var.ABT_SnsTopicTracingConfig
  snsTopicFifoTopic                                = var.ABT_SnsTopicFifoTopic
  snsTopicArchivePolicy                            = var.ABT_SnsTopicArchivePolicy != null ? jsonencode(var.ABT_SnsTopicArchivePolicy) : null
  snsTopicContentBasedDeduplication                = var.ABT_SnsTopicContentBasedDeduplication
  snsTopicLambdaSuccessFeedbackRoleArn             = var.ABT_SnsTopicLambdaSuccessFeedbackRoleArn
  snsTopicLambdaSuccessFeedbackSampleRate          = var.ABT_SnsTopicLambdaSuccessFeedbackSampleRate
  snsTopicLambdaFailureFeedbackRoleArn             = var.ABT_SnsTopicLambdaFailureFeedbackRoleArn
  snsTopicSqsSuccessFeedbackRoleArn                = var.ABT_SnsTopicSqsSuccessFeedbackRoleArn
  snsTopicSqsSuccessFeedbackSampleRate             = var.ABT_SnsTopicSqsSuccessFeedbackSampleRate
  snsTopicSqsFailureFeedbackRoleArn                = var.ABT_SnsTopicSqsFailureFeedbackRoleArn
  snsTopicFirehoseSuccessFeedbackRoleArn           = var.ABT_SnsTopicFirehoseSuccessFeedbackRoleArn
  snsTopicFirehoseSuccessFeedbackSampleRate        = var.ABT_SnsTopicFirehoseSuccessFeedbackSampleRate
  snsTopicFirehoseFailureFeedbackRoleArn           = var.ABT_SnsTopicFirehoseFailureFeedbackRoleArn
  projectName                                      = var.projectName
  creator                                          = var.creator
  deployedDate                                     = var.deployedDate
  snsTopicAdditionalTags                           = var.additionalTags
  snsTopicSubscriptionEndpoint                     = var.ABT_SnsTopicSubscriptionEndpoint
  snsTopicSubscriptionProtocal                     = var.ABT_SnsTopicSubscriptionProtocal
  snsTopicSubscriptionSubscriptionRoleArn          = var.ABT_SnsTopicSubscriptionSubscriptionRoleArn
  snsTopicSubscriptionConfirmationTimeoutInMinutes = var.ABT_SnsTopicSubscriptionConfirmationTimeoutInMinutes
  snsTopicSubscriptionDeliveryPolicy               = var.ABT_SnsTopicSubscriptionDeliveryPolicy != null ? jsonencode(var.ABT_SnsTopicSubscriptionDeliveryPolicy) : null
  snsTopicSubscriptionEndpointAutoConfirms         = var.ABT_SnsTopicSubscriptionEndpointAutoConfirms
  snsTopicSubscriptionFilterPolicy                 = var.ABT_SnsTopicSubscriptionFilterPolicy != null ? jsonencode(var.ABT_SnsTopicSubscriptionFilterPolicy) : null
  snsTopicSubscriptionFilterPolicyScope            = var.ABT_SnsTopicSubscriptionFilterPolicyScope
  snsTopicSubscriptionRawMessageDelivery           = var.ABT_SnsTopicSubscriptionRawMessageDelivery
  snsTopicSubscriptionRedrivePolicy                = var.ABT_SnsTopicSubscriptionRedrivePolicy != null ? jsonencode(var.ABT_SnsTopicSubscriptionRedrivePolicy) : null
  snsTopicSubscriptionReplayPolicy                 = var.ABT_SnsTopicSubscriptionReplayPolicy != null ? jsonencode(var.ABT_SnsTopicSubscriptionReplayPolicy) : null
}

module "budget" {
  source = "../../aws/budgets/genericFilterBudget"

  resourceName                         = var.resourceName
  budgetType                           = var.ABT_BudgetType
  budgetLimitAmount                    = var.ABT_BudgetLimitAmount
  budgetLimitUnit                      = var.ABT_BudgetLimitUnit
  budgetTimeUnit                       = var.ABT_BudgetTimeUnit
  budgetCostFilterName                 = var.ABT_BudgetCostFilterName
  budgetCostFilterValues               = var.ABT_BudgetCostFilterValues
  budgetNotificationComparisonOperator = var.ABT_BudgetNotificationComparisonOperator
  budgetNotificationThreshold          = var.ABT_BudgetNotificationThreshold
  budgetNotificationThresholdType      = var.ABT_BudgetNotificationThresholdType
  budgetNotificationType               = var.ABT_BudgetNotificationType
  snsTopicArns                         = concat([module.snsTopic.snsTopicArn], var.ABT_AdditionalSnsTopicArns)
  projectName                          = var.projectName
  creator                              = var.creator
  deployedDate                         = var.deployedDate
  awsBudgetAdditionalTags              = var.additionalTags
}