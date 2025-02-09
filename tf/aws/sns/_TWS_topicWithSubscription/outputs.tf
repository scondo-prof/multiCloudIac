output "snsTopicArn" {
  value = module.snsTopic.snsTopicArn
}

output "snsTopicName" {
  value = module.snsTopic.snsTopicName
}

output "snsTopicSubscriptionArn" {
  value = module.snsTopicSubscription.topicSubscriptionArn
}