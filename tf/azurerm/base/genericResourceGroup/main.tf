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
  features {}
  subscription_id = var.azurermSubscriptionId
}

resource "azurerm_resource_group" "resourceGroup" {
  location   = var.azurermRegion
  name       = "${var.resourceName}-resource-group"
  managed_by = var.resourceGroupManagedBy
  tags = merge({
    project       = var.projectName
    created-by    = var.createdBy
    tf-module     = var.tfModule
    deployed-date = var.deployedDate
  }, var.additionalTags)
}