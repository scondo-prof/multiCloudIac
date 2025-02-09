output "webhookPayloadUrl" {
  value = aws_codebuild_webhook.webhook.payload_url
}

output "webhookUrl" {
  value = aws_codebuild_webhook.webhook.url
}