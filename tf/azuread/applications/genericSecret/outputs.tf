output "azureAdApplicationPasswordKeyId" {
  value = azuread_application_password.azureAdApplicationPassword.key_id
}

output "azureAdApplicationPasswordValue" {
  value     = azuread_application_password.azureAdApplicationPassword.value
  sensitive = true
}