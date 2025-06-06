
module "TWS" {
  source                                               = "../../aws/sns/_TWS_topicWithSubscription"
  awsRegion                                            = var.awsRegion
  resourceName                                         = var.resourceName
  TWS_SnsTopicPolicy                                   = var.ABT_TWS_SnsTopicPolicy
  TWS_SnsTopicDeliveryPolicy                           = var.ABT_TWS_SnsTopicDeliveryPolicy
  TWS_SnsTopicApplicationSuccessFeedbackRoleArn        = var.ABT_TWS_SnsTopicApplicationSuccessFeedbackRoleArn
  TWS_SnsTopicApplicationSuccessFeedbackSampleRate     = var.ABT_TWS_SnsTopicApplicationSuccessFeedbackSampleRate
  TWS_SnsTopicApplicationFailureFeedbackRoleArn        = var.ABT_TWS_SnsTopicApplicationFailureFeedbackRoleArn
  TWS_SnsTopicHttpSuccessFeedbackRoleArn               = var.ABT_TWS_SnsTopicHttpSuccessFeedbackRoleArn
  TWS_SnsTopicHttpSuccessFeedbackSampleRate            = var.ABT_TWS_SnsTopicHttpSuccessFeedbackSampleRate
  TWS_SnsTopicHttpFailureFeedbackRoleArn               = var.ABT_TWS_SnsTopicHttpFailureFeedbackRoleArn
  TWS_SnsTopicKmsMasterKeyId                           = var.ABT_TWS_SnsTopicKmsMasterKeyId
  TWS_SnsTopicSignatureVersion                         = var.ABT_TWS_SnsTopicSignatureVersion
  TWS_SnsTopicTracingConfig                            = var.ABT_TWS_SnsTopicTracingConfig
  TWS_SnsTopicFifoTopic                                = var.ABT_TWS_SnsTopicFifoTopic
  TWS_SnsTopicArchivePolicy                            = var.ABT_TWS_SnsTopicArchivePolicy
  TWS_SnsTopicContentBasedDeduplication                = var.ABT_TWS_SnsTopicContentBasedDeduplication
  TWS_SnsTopicLambdaSuccessFeedbackRoleArn             = var.ABT_TWS_SnsTopicLambdaSuccessFeedbackRoleArn
  TWS_SnsTopicLambdaSuccessFeedbackSampleRate          = var.ABT_TWS_SnsTopicLambdaSuccessFeedbackSampleRate
  TWS_SnsTopicLambdaFailureFeedbackRoleArn             = var.ABT_TWS_SnsTopicLambdaFailureFeedbackRoleArn
  TWS_SnsTopicSqsSuccessFeedbackRoleArn                = var.ABT_TWS_SnsTopicSqsSuccessFeedbackRoleArn
  TWS_SnsTopicSqsSuccessFeedbackSampleRate             = var.ABT_TWS_SnsTopicSqsSuccessFeedbackSampleRate
  TWS_SnsTopicSqsFailureFeedbackRoleArn                = var.ABT_TWS_SnsTopicSqsFailureFeedbackRoleArn
  TWS_SnsTopicFirehoseSuccessFeedbackRoleArn           = var.ABT_TWS_SnsTopicFirehoseSuccessFeedbackRoleArn
  TWS_SnsTopicFirehoseSuccessFeedbackSampleRate        = var.ABT_TWS_SnsTopicFirehoseSuccessFeedbackSampleRate
  TWS_SnsTopicFirehoseFailureFeedbackRoleArn           = var.ABT_TWS_SnsTopicFirehoseFailureFeedbackRoleArn
  projectName                                          = var.projectName
  createdBy                                            = var.createdBy
  deployedDate                                         = var.deployedDate
  tfModule                                             = var.tfModule
  additionalTags                                       = var.additionalTags
  TWS_SnsTopicSubscriptionEndpoint                     = var.ABT_TWS_SnsTopicSubscriptionEndpoint
  TWS_SnsTopicSubscriptionProtocal                     = var.ABT_TWS_SnsTopicSubscriptionProtocal
  TWS_SnsTopicSubscriptionSubscriptionRoleArn          = var.ABT_TWS_SnsTopicSubscriptionSubscriptionRoleArn
  TWS_SnsTopicSubscriptionTopicArn                     = var.ABT_TWS_SnsTopicSubscriptionTopicArn
  TWS_SnsTopicSubscriptionConfirmationTimeoutInMinutes = var.ABT_TWS_SnsTopicSubscriptionConfirmationTimeoutInMinutes
  TWS_SnsTopicSubscriptionDeliveryPolicy               = var.ABT_TWS_SnsTopicSubscriptionDeliveryPolicy
  TWS_SnsTopicSubscriptionEndpointAutoConfirms         = var.ABT_TWS_SnsTopicSubscriptionEndpointAutoConfirms
  TWS_SnsTopicSubscriptionFilterPolicy                 = var.ABT_TWS_SnsTopicSubscriptionFilterPolicy
  TWS_SnsTopicSubscriptionFilterPolicyScope            = var.ABT_TWS_SnsTopicSubscriptionFilterPolicyScope
  TWS_SnsTopicSubscriptionRawMessageDelivery           = var.ABT_TWS_SnsTopicSubscriptionRawMessageDelivery
  TWS_SnsTopicSubscriptionRedrivePolicy                = var.ABT_TWS_SnsTopicSubscriptionRedrivePolicy
  TWS_SnsTopicSubscriptionReplayPolicy                 = var.ABT_TWS_SnsTopicSubscriptionReplayPolicy
}

#---

module "budget" {
  source               = "../../aws/budgets/genericFilterBudget"
  awsRegion            = var.awsRegion
  budgetType           = var.ABT_budgetType
  budgetTimeUnit       = var.ABT_budgetTimeUnit
  budgetAccountId      = var.ABT_budgetAccountId
  budgetAutoAdjustData = var.ABT_budgetAutoAdjustData
  budgetCostFilter     = var.ABT_budgetCostFilter
  budgetCostTypes      = var.ABT_budgetCostTypes
  budgetLimitAmount    = var.ABT_budgetLimitAmount
  budgetLimitUnit      = var.ABT_budgetLimitUnit
  budgetName           = var.ABT_budgetName
  budgetNamePrefix     = var.ABT_budgetNamePrefix
  budgetNotification = merge({
    subscriber_sns_topic_arns = concat([module.TWS.ABT_TWS_SnsTopicArn], var.ABT_budgetNotificationSubscriberSnsTopicArns)
  }, var.ABT_budgetNotification)
  budgetPlannedLimit    = var.ABT_budgetPlannedLimit
  projectName           = var.projectName
  createdBy             = var.createdBy
  deployedDate          = var.deployedDate
  tfModule              = var.tfModule
  additionalTags        = var.additionalTags
  budgetTimePeriodEnd   = var.ABT_budgetTimePeriodEnd
  budgetTimePeriodStart = var.ABT_budgetTimePeriodStart
}

#---
