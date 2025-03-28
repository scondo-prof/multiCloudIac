terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "<~ 4.20"
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

resource "azurerm_key_vault" "keyVault" {
  name                = "${var.resourceName}-key-vault"
  location            = var.azurermRegion
  resource_group_name = var.keyVaultResourceGroupName
  sku_name            = var.keyVaultSkuName
  tenant_id           = var.keyVaultTenantId

  access_policy                   = var.keyVaultAccessPolicy
  enabled_for_deployment          = var.keyVaultEnabledForDeployment
  enabled_for_disk_encryption     = var.keyVaultEnabledForDiskEncryption
  enabled_for_template_deployment = var.keyVaultEnabledForTemplateDeployment
  enable_rbac_authorization       = var.keyVaultEnableRbacAuthorization

  dynamic "network_acls" {
    for_each = var.keyVaultNetworkAcls != null ? [var.keyVaultNetworkAcls] : []
    content {
      bypass                     = network_acls.value["bypass"]
      default_action             = network_acls.value["default_action"]
      ip_rules                   = network_acls.value["ip_rules"]
      virtual_network_subnet_ids = network_acls.value["virtual_network_subnet_ids"]
    }
  }

  purge_protection_enabled      = var.keyVaultPurgeProtectionEnabled
  public_network_access_enabled = var.keyVaultPublicNetworkAccessEnabled
  soft_delete_retention_days    = var.keyVaultSoftDeleteRetentionDays

  dynamic "contact" {
    for_each = var.keyVaultContact != null ? [var.keyVaultContact] : []
    content {
      email = contact.value["email"]
      name  = contact.value["name"]
      phone = contact.value["phone"]
    }
  }

  tags = merge({
    project       = var.projectName
    created-by    = var.createdBy
    tf-module     = var.tfModule
    deployed-date = var.deployedDate
  }, var.additionalTags)
}