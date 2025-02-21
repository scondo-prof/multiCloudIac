output "eventSourceMappingArn" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.arn
}

output "eventSourceMappingFunctionArn" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.function_arn
}

output "eventSourceMappingLastModified" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.last_modified
}

output "eventSourceMappingLastProcessingResult" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.last_processing_result
}

output "eventSourceMappingState" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.state
}

output "eventSourceMappingStateTransitionReason" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.state_transition_reason
}

output "eventSourceMappingTagsAll" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.tags_all
}

output "eventSourceMappingUuid" {
  value = aws_lambda_event_source_mapping.eventSourceMapping.uuid
}