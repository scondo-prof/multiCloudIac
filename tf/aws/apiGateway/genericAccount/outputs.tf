output "accountApiKeyVersion" {
  value = aws_api_gateway_account.account.api_key_version
}

output "accountThrottleSettings" {
  value = aws_api_gateway_account.account.throttle_settings
}