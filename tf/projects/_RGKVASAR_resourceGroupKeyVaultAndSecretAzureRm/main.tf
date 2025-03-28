
module "resourceGroup" {
  source                 = "../../azurerm/base/genericResourceGroup"
  azurermSubscriptionId  = var.azurermSubscriptionId
  azurermRegion          = var.azurermRegion
  resourceName           = var.resourceName
  resourceGroupManagedBy = var.RGKVASAR_ResourceGroupManagedBy
  projectName            = var.projectName
  createdBy              = var.createdBy
  tfModule               = var.tfModule
  deployedDate           = var.deployedDate
  additionalTags         = var.additionalTags
}

#---

module "keyVault" {
  source                                     = "../../azurerm/keyVault/genericKeyVault"
  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = var.resourceName
  azurermRegion                              = var.azurermRegion
  keyVaultResourceGroupName                  = module.resourceGroup.resourceGroupName
  keyVaultSkuName                            = var.RGKVASAR_KeyVaultSkuName
  keyVaultTenantId                           = var.RGKVASAR_KeyVaultTenantId
  keyVaultAccessPolicy                       = var.RGKVASAR_KeyVaultAccessPolicy
  keyVaultEnabledForDeployment               = var.RGKVASAR_KeyVaultEnabledForDeployment
  keyVaultEnabledForDiskEncryption           = var.RGKVASAR_KeyVaultEnabledForDiskEncryption
  keyVaultEnabledForTemplateDeployment       = var.RGKVASAR_KeyVaultEnabledForTemplateDeployment
  keyVaultEnableRbacAuthorization            = var.RGKVASAR_KeyVaultEnableRbacAuthorization
  keyVaultNetworkAcls                        = var.RGKVASAR_KeyVaultNetworkAcls
  keyVaultPurgeProtectionEnabled             = var.RGKVASAR_KeyVaultPurgeProtectionEnabled
  keyVaultPublicNetworkAccessEnabled         = var.RGKVASAR_KeyVaultPublicNetworkAccessEnabled
  keyVaultSoftDeleteRetentionDays            = var.RGKVASAR_KeyVaultSoftDeleteRetentionDays
  keyVaultContact                            = var.RGKVASAR_KeyVaultContact
  projectName                                = var.projectName
  createdBy                                  = var.createdBy
  tfModule                                   = var.tfModule
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
}

#---


module "keyVaultSecret" {
  source                                     = "../../azurerm/keyVault/genericKeyVaultSecret"
  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  keyVaultSecretObjects                      = var.RGKVASAR_KeyVaultSecretObjects
  keyVaultSecretVaultId                      = module.keyVault.keyVaultId
  projectName                                = var.projectName
  createdBy                                  = var.createdBy
  tfModule                                   = var.tfModule
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
}

#---