output "keyVaultId" {
  value = azurerm_key_vault.keyVault.id
}

output "keyVaultName" {
  value = azurerm_key_vault.keyVault.name
}

output "keyVaultUri" {
  value = azurerm_key_vault.keyVault.vault_uri
}