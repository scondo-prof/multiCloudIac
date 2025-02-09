output "flowLogArn" {
  value = aws_flow_log.flowLog.arn
}

output "flowLogId" {
  value = aws_flow_log.flowLog.id
}

output "flowLogTagsAll" {
  value = aws_flow_log.flowLog.tags_all
}