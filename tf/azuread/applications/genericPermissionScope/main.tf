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

resource "random_uuid" "uuid" {}

resource "azuread_application_permission_scope" "azureAdApplicationPermissionScope" {
  admin_consent_description  = var.azureAdApplicationPermissionScopeAdminConsentDescription
  admin_consent_display_name = var.azureAdApplicationPermissionScopeAdminConsentDisplayName
  application_id             = var.azureAdApplicationPermissionScopeApplicationObjectId
  scope_id                   = random_uuid.uuid.result
  type                       = var.azureAdApplicationPermissionScopeType
  user_consent_description   = var.azureAdApplicationPermissionScopeUserConsentDescription
  user_consent_display_name  = var.azureAdApplicationPermissionScopeUserConsentDisplayName
  value                      = var.azureAdApplicationPermissionScopeValue
}