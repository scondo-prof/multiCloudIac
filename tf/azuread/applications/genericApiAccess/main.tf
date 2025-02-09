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

resource "azuread_application_api_access" "azureAdApplicationApiAccess" {

  api_client_id  = var.azureAdApplicationApiAccessApiClientId
  application_id = var.azureAdApplicationApiAccessApplicationObjectId
  role_ids       = var.azureAdApplicationApiAccessRoleIds
  scope_ids      = var.azureAdApplicationApiAccessScopeIds
}