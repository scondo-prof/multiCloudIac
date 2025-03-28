terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.20"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
      recover_soft_deleted_key_vaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
    }
  }
  subscription_id = var.azurermSubscriptionId
}

resource "azurerm_key_vault_secret" "keyVaultSecret" {
  count        = len(var.keyVaultSecretObjects)
  name         = var.keyVaultSecretObjects[count.index]["name"]
  value        = var.keyVaultSecretObjects[count.index]["value"]
  key_vault_id = var.keyVaultSecretVaultId
  content_type = var.keyVaultSecretObjects[count.index]["content_type"]

  tags = merge({
    project       = var.projectName
    created-by    = var.createdBy
    tf-module     = var.tfModule
    deployed-date = var.deployedDate
  }, var.additionalTags)

  not_before_date = var.keyVaultSecretObjects[count.index]["not_before_date"]
  expiration_date = var.keyVaultSecretObjects[count.index]["expiration_date"]
}