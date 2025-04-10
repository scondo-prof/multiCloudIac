output "keyVaultSecretId" {
  value = azurerm_key_vault_secret.keyVaultSecret[*].id
}

output "keyVaultSecretName" {
  value = azurerm_key_vault_secret.keyVaultSecret[*].name
}

output "keyVaultSecretVersion" {
  value = azurerm_key_vault_secret.keyVaultSecret[*].version
}