output "snsTopicArn" {
  value = aws_sns_topic.snsTopic.arn
}

output "snsTopicName" {
  value = aws_sns_topic.snsTopic.name
}

