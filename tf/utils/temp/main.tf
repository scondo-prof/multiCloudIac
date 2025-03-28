
module "keyVaultSecret" {
  source                                     = "../../azurerm/keyVault/genericKeyVaultSecret"
  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  keyVaultSecretObjects                      = var.RGKVASAR_KeyVaultSecretObjects
  keyVaultSecretVaultId                      = var.RGKVASAR_KeyVaultSecretVaultId
  projectName                                = var.projectName
  createdBy                                  = var.createdBy
  tfModule                                   = var.tfModule
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
}

#---
