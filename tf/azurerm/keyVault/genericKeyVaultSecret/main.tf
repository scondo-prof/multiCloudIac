terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.6.0"
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
  name         = "${var.resourceName}-secret"
  value        = var.keyVaultSecretValue
  key_vault_id = var.keyVaultSecretVaultId
  content_type = var.keyVaultSecretContentType

  tags = merge({
    project       = var.projectName
    created-by    = var.createdBy
    tf-module     = var.tfModule
    deployed-date = var.deployedDate
  }, var.additionalTags)

  not_before_date = var.keyVaultSecretNotBeforeDate
  expiration_date = var.keyVaultSecretExperiationDate
}