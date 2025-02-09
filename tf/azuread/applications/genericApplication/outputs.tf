output "azureAdApplicationIdUris" {
  value = azuread_application.azureAdApplication.identifier_uris
}

output "azureAdApplicationObjectId" {
  value = azuread_application.azureAdApplication.object_id
}

output "azureAdApplicationClientId" {
  value = azuread_application.azureAdApplication.client_id
}