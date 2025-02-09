output "serviceAccountName" {
  value = prefect_service_account.serviceAccount.name
}

output "serviceAccountApiKey" {
  value = prefect_service_account.serviceAccount.api_key
  sensitive = true
}

output "serviceAccountApiKeyId" {
  value = prefect_service_account.serviceAccount.api_key_id
}

output "serviceAccountApiKeyName" {
  value = prefect_service_account.serviceAccount.api_key_name
}

output "serviceAccountApiKeyExpiration" {
  value = prefect_service_account.serviceAccount.api_key_expiration
}