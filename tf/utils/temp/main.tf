
    module "snsTopic" {
  source = "../genericSnsTopic"
awsRegion = var.awsRegion
resourceName = var.resourceName
snsTopicPolicy = var.TWS_SnsTopicPolicy != null ? jsonencode(var.TWS_SnsTopicPolicy) : null
snsTopicDeliveryPolicy = var.TWS_SnsTopicDeliveryPolicy != null ? jsonencode(var.TWS_SnsTopicDeliveryPolicy) : null
snsTopicApplicationSuccessFeedbackRoleArn = var.TWS_SnsTopicApplicationSuccessFeedbackRoleArn
snsTopicApplicationSuccessFeedbackSampleRate = var.TWS_SnsTopicApplicationSuccessFeedbackSampleRate
snsTopicApplicationFailureFeedbackRoleArn = var.TWS_SnsTopicApplicationFailureFeedbackRoleArn
snsTopicHttpSuccessFeedbackRoleArn = var.TWS_SnsTopicHttpSuccessFeedbackRoleArn
snsTopicHttpSuccessFeedbackSampleRate = var.TWS_SnsTopicHttpSuccessFeedbackSampleRate
snsTopicHttpFailureFeedbackRoleArn = var.TWS_SnsTopicHttpFailureFeedbackRoleArn
snsTopicKmsMasterKeyId = var.TWS_SnsTopicKmsMasterKeyId
snsTopicSignatureVersion = var.TWS_SnsTopicSignatureVersion
snsTopicTracingConfig = var.TWS_SnsTopicTracingConfig
snsTopicFifoTopic = var.TWS_SnsTopicFifoTopic
snsTopicArchivePolicy = var.TWS_SnsTopicArchivePolicy != null ? jsonencode(var.TWS_SnsTopicArchivePolicy) : null
snsTopicContentBasedDeduplication = var.TWS_SnsTopicContentBasedDeduplication
snsTopicLambdaSuccessFeedbackRoleArn = var.TWS_SnsTopicLambdaSuccessFeedbackRoleArn
snsTopicLambdaSuccessFeedbackSampleRate = var.TWS_SnsTopicLambdaSuccessFeedbackSampleRate
snsTopicLambdaFailureFeedbackRoleArn = var.TWS_SnsTopicLambdaFailureFeedbackRoleArn
snsTopicSqsSuccessFeedbackRoleArn = var.TWS_SnsTopicSqsSuccessFeedbackRoleArn
snsTopicSqsSuccessFeedbackSampleRate = var.TWS_SnsTopicSqsSuccessFeedbackSampleRate
snsTopicSqsFailureFeedbackRoleArn = var.TWS_SnsTopicSqsFailureFeedbackRoleArn
snsTopicFirehoseSuccessFeedbackRoleArn = var.TWS_SnsTopicFirehoseSuccessFeedbackRoleArn
snsTopicFirehoseSuccessFeedbackSampleRate = var.TWS_SnsTopicFirehoseSuccessFeedbackSampleRate
snsTopicFirehoseFailureFeedbackRoleArn = var.TWS_SnsTopicFirehoseFailureFeedbackRoleArn
projectName = var.projectName
createdBy = var.createdBy
deployedDate = var.deployedDate
tfModule = var.tfModule
additionalTags = var.additionalTags
}

#---

    module "snsTopicSubscription" {
  source = "../genericSnsTopicSubscription"
awsRegion = var.awsRegion
snsTopicSubscriptionEndpoint = var.TWS_SnsTopicSubscriptionEndpoint
snsTopicSubscriptionProtocal = var.TWS_SnsTopicSubscriptionProtocal
snsTopicSubscriptionSubscriptionRoleArn = var.TWS_SnsTopicSubscriptionSubscriptionRoleArn
snsTopicSubscriptionTopicArn = var.TWS_SnsTopicSubscriptionTopicArn
snsTopicSubscriptionConfirmationTimeoutInMinutes = var.TWS_SnsTopicSubscriptionConfirmationTimeoutInMinutes
snsTopicSubscriptionDeliveryPolicy = var.TWS_SnsTopicSubscriptionDeliveryPolicy != null ? jsonencode(var.TWS_SnsTopicSubscriptionDeliveryPolicy) : null
snsTopicSubscriptionEndpointAutoConfirms = var.TWS_SnsTopicSubscriptionEndpointAutoConfirms
snsTopicSubscriptionFilterPolicy = var.TWS_SnsTopicSubscriptionFilterPolicy != null ? jsonencode(var.snsTopicSubscriptionFilterPolicy) : null
snsTopicSubscriptionFilterPolicyScope = var.TWS_SnsTopicSubscriptionFilterPolicyScope
snsTopicSubscriptionRawMessageDelivery = var.TWS_SnsTopicSubscriptionRawMessageDelivery
snsTopicSubscriptionRedrivePolicy = var.TWS_SnsTopicSubscriptionRedrivePolicy != null ? jsonencode(var.snsTopicSubscriptionRedrivePolicy) : null
snsTopicSubscriptionReplayPolicy = var.TWS_SnsTopicSubscriptionReplayPolicy != null ? jsonencode(var.snsTopicSubscriptionReplayPolicy) : null
}

#---
