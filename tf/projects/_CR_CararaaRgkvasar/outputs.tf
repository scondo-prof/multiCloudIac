output "CARARAA_RGKVASAR_AzureAdResourceApplicationIdUris" {
  value = module.CARARAA.CARARAA_AzureAdResourceApplicationIdUris
}

output "CARARAA_RGKVASAR_AzureAdResourceApplicationObjectId" {
  value = module.CARARAA.CARARAA_AzureAdResourceApplicationObjectId
}

output "CARARAA_RGKVASAR_AzureAdResourceApplicationClientId" {
  value = module.CARARAA.CARARAA_AzureAdResourceApplicationClientId
}

output "CARARAA_RGKVASAR_AzureAdClientApplicationIdUris" {
  value = module.CARARAA.CARARAA_AzureAdClientApplicationIdUris
}

output "CARARAA_RGKVASAR_AzureAdClientApplicationObjectId" {
  value = module.CARARAA.CARARAA_AzureAdClientApplicationObjectId
}

output "CARARAA_RGKVASAR_AzureAdClientApplicationClientId" {
  value = module.CARARAA.CARARAA_AzureAdClientApplicationClientId
}

output "CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeId" {
  value = module.CARARAA.CARARAA_AzureAdResourceApplicationPermissionScopeId
}

output "CARARAA_RGKVASAR_AzureAdClientApplicationPasswordKeyId" {
  value = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordKeyId
}

output "CARARAA_RGKVASAR_AzureAdClientApplicationPasswordValue" {
  value     = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordValue
  sensitive = true
}

#--

output "CARARAA_RGKVASAR_ResourceGroupId" {
  value = module.RGKVASAR.RGKVASAR_ResourceGroupId
}

output "CARARAA_RGKVASAR_ResourceGroupName" {
  value = module.RGKVASAR.RGKVASAR_ResourceGroupName
}

output "CARARAA_RGKVASAR_KeyVaultId" {
  value = module.RGKVASAR.RGKVASAR_KeyVaultId
}

output "CARARAA_RGKVASAR_KeyVaultName" {
  value = module.RGKVASAR.RGKVASAR_KeyVaultName
}

output "CARARAA_RGKVASAR_KeyVaultUri" {
  value = module.RGKVASAR.RGKVASAR_KeyVaultUri
}

output "CARARAA_RGKVASAR_KeyVaultSecretId" {
  value = module.RGKVASAR.RGKVASAR_KeyVaultSecretId
}

output "CARARAA_RGKVASAR_KeyVaultSecretName" {
  value = module.RGKVASAR.RGKVASAR_KeyVaultSecretName
}

output "CARARAA_RGKVASAR_KeyVaultSecretVersion" {
  value = module.RGKVASAR.RGKVASAR_KeyVaultSecretVersion
}

#--

output "CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretId" {
  value = module.resourceApplicationIdUriKeyVaultSecret.keyVaultSecretId
}

output "CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretName" {
  value = module.resourceApplicationIdUriKeyVaultSecret.keyVaultSecretName
}

output "CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretVersion" {
  value = module.resourceApplicationIdUriKeyVaultSecret.keyVaultSecretVersion
}

#--

output "CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretId" {
  value = module.resourceApplicationObjectIdKeyVaultSecret.keyVaultSecretId
}

output "CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretName" {
  value = module.resourceApplicationObjectIdKeyVaultSecret.keyVaultSecretName
}

output "CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretVersion" {
  value = module.resourceApplicationObjectIdKeyVaultSecret.keyVaultSecretVersion
}

#--

output "CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretId" {
  value = module.resourceApplicationClientIdKeyVaultSecret.keyVaultSecretId
}

output "CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretName" {
  value = module.resourceApplicationClientIdKeyVaultSecret.keyVaultSecretName
}

output "CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretVersion" {
  value = module.resourceApplicationClientIdKeyVaultSecret.keyVaultSecretVersion
}

#--

output "CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretId" {
  value = module.clientApplicationObjectIdKeyVaultSecret.keyVaultSecretId
}

output "CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretName" {
  value = module.clientApplicationObjectIdKeyVaultSecret.keyVaultSecretName
}

output "CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretVersion" {
  value = module.clientApplicationObjectIdKeyVaultSecret.keyVaultSecretVersion
}

#--

output "CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretId" {
  value = module.clientApplicationClientIdKeyVaultSecret.keyVaultSecretId
}

output "CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretName" {
  value = module.clientApplicationClientIdKeyVaultSecret.keyVaultSecretName
}

output "CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretVersion" {
  value = module.clientApplicationClientIdKeyVaultSecret.keyVaultSecretVersion
}

#--

output "CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretId" {
  value = module.clientApplicationPasswordKeyIdKeyVaultSecret.keyVaultSecretId
}

output "CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretName" {
  value = module.clientApplicationPasswordKeyIdKeyVaultSecret.keyVaultSecretName
}

output "CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretVersion" {
  value = module.clientApplicationPasswordKeyIdKeyVaultSecret.keyVaultSecretVersion
}

#--

output "CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretId" {
  value = module.clientApplicationPasswordValueKeyVaultSecret.keyVaultSecretId
}

output "CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretName" {
  value = module.clientApplicationPasswordValueKeyVaultSecret.keyVaultSecretName
}

output "CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretVersion" {
  value = module.clientApplicationPasswordValueKeyVaultSecret.keyVaultSecretVersion
}