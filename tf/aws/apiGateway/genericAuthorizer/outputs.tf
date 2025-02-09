output "authorizerArn" {
  value = aws_api_gateway_authorizer.authorizer.arn
}

output "authorizerName" {
  value = aws_api_gateway_authorizer.authorizer.name
}