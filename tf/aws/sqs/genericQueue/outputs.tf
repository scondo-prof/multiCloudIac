output "queueArn" {
  value = aws_sqs_queue.queue.arn
}

output "queueId" {
  value = aws_sqs_queue.queue.id
}

output "queueName" {
  value = aws_sqs_queue.queue.name
}

output "queueTagsAll" {
  value = aws_sqs_queue.queue.tags_all
}

output "queueUrl" {
  value = aws_sqs_queue.queue.url
}