output "apiKeyArn" {
  value = aws_api_gateway_api_key.apiKey.arn
}

output "apiKeyId" {
  value = aws_api_gateway_api_key.apiKey.id
}

output "apiKeyName" {
  value = aws_api_gateway_api_key.apiKey.name
}