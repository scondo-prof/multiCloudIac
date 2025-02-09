output "logGroupArn" {
  value = aws_cloudwatch_log_group.logGroup.arn
}

output "logGroupName" {
  value = aws_cloudwatch_log_group.logGroup.name
}