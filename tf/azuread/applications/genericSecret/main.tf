terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.0.2"
    }
  }
}

provider "azuread" {
  tenant_id = var.azureAdTenantId
}

resource "azuread_application_password" "azureAdApplicationPassword" {
  application_id      = var.azureAdApplicationPasswordApplicationObjectId
  display_name        = "${var.resourceName}-password"
  end_date            = var.azureAdApplicationPasswordEndDate
  rotate_when_changed = var.azureAdApplicationPasswordRoateWhenChanged
  start_date          = var.azureAdApplicationPasswordStartDate
}