output "RGKVASAR_ResourceGroupId" {
  value = module.resourceGroup.resourceGroupId
}

output "RGKVASAR_ResourceGroupName" {
  value = module.resourceGroup.resourceGroupName
}

#---
output "RGKVASAR_KeyVaultId" {
  value = module.keyVault.keyVaultId
}

output "RGKVASAR_KeyVaultName" {
  value = module.keyVault.keyVaultName
}

output "RGKVASAR_KeyVaultUri" {
  value = module.keyVault.keyVaultUri
}

#---
output "RGKVASAR_KeyVaultSecretId" {
  value = module.keyVaultSecret.keyVaultSecretId
}

output "RGKVASAR_KeyVaultSecretName" {
  value = module.keyVaultSecret.keyVaultSecretName
}

output "RGKVASAR_KeyVaultSecretVersion" {
  value = module.keyVaultSecret.keyVaultSecretVersion
}

#---
