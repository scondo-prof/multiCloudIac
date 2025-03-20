output "TWS_SnsTopicArn" {
  value = module.snsTopic.snsTopicArn
}

output "TWS_SnsTopicName" {
  value = module.snsTopic.snsTopicName
}



#---
output "topicSubscriptionArn" {
  value = module.snsTopicSubscription.topicSubscriptionArn
}

#---
