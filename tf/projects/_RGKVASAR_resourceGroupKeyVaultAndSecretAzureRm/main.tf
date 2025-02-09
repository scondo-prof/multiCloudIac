terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
}


module "resourceGroup" {
  source = "../../azurerm/base/genericResourceGroup"

  azurermSubscriptionId  = var.azurermSubscriptionId
  azurermRegion          = var.azurermRegion
  resourceName           = var.resourceName
  resourceGroupManagedBy = var.RGKVASAR_ResourceGroupManagedBy

  projectName    = var.projectName
  creator        = var.creator
  deployedDate   = var.deployedDate
  additionalTags = var.additionalTags
}

module "keyVault" {
  source = "../../azurerm/keyVault/genericKeyVault"

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
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
}

module "keyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = var.resourceName
  keyVaultSecretValue                        = var.RGKVASAR_KeyVaultSecretValue
  keyVaultSecretVaultId                      = module.keyVault.keyVaultId
  keyVaultSecretContentType                  = var.RGKVASAR_KeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.RGKVASAR_KeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.RGKVASAR_KeyVaultSecretExperiationDate
}