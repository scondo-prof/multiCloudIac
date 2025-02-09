output "restApiArn" {
  value = aws_api_gateway_rest_api.restApi.arn
}

output "restApiExecutionArn" {
  value = aws_api_gateway_rest_api.restApi.execution_arn
}

output "restApiId" {
  value = aws_api_gateway_rest_api.restApi.id
}

output "restApiName" {
  value = aws_api_gateway_rest_api.restApi.name
}

output "restApiRootResourceId" {
  value = aws_api_gateway_rest_api.restApi.root_resource_id
}