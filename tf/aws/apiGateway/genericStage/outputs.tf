output "stageArn" {
  value = aws_api_gateway_stage.stage.arn
}

output "stageInvokeUrl" {
  value = aws_api_gateway_stage.stage.invoke_url
}

output "stageExecutionArn" {
  value = aws_api_gateway_stage.stage.execution_arn
}

output "stageName" {
  value = aws_api_gateway_stage.stage.stage_name
}