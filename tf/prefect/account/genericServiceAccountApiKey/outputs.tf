output "serviceAccountActorId" {
  value = prefect_service_account.serviceAccount.actor_id
}

output "serviceAccountApiKey" {
  value     = prefect_service_account.serviceAccount.api_key
  sensitive = true
}

output "serviceAccountApiKeyCreated" {
  value = prefect_service_account.serviceAccount.api_key_created
}

output "serviceAccountApiKeyId" {
  value = prefect_service_account.serviceAccount.api_key_id
}

output "serviceAccountApiKeyName" {
  value = prefect_service_account.serviceAccount.api_key_name
}

output "serviceAccountCreated" {
  value = prefect_service_account.serviceAccount.created
}

output "serviceAccountId" {
  value = prefect_service_account.serviceAccount.id
}

output "serviceAccountUpdated" {
  value = prefect_service_account.serviceAccount.updated
}