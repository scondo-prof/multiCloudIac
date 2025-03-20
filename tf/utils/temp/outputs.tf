output "ABT_TWS_SnsTopicArn" {
  value = module.TWS.TWS_SnsTopicArn
}

output "ABT_TWS_SnsTopicName" {
  value = module.TWS.TWS_SnsTopicName
}


output "topicSubscriptionArn" {
  value = module.TWS.topicSubscriptionArn
}



#---
output "ABT_budgetArn" {
  value = module.budget.budgetArn
}

output "ABT_budgetId" {
  value = module.budget.budgetId
}

output "ABT_budgetTagsAll" {
  value = module.budget.budgetTagsAll
}

output "ABT_budgetName" {
  value = module.budget.budgetName
}

#---
