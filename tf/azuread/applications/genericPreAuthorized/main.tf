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

resource "azuread_application_pre_authorized" "azureAdApplicationPreAuthorized" {
  application_id       = var.azureAdApplicationPreAuthorizedApplicationObjectId
  authorized_client_id = var.azureAdApplicationPreAuthorizedApplicationClientId
  permission_ids       = var.azureAdApplicationPreAuthorizedPermissionIds
}