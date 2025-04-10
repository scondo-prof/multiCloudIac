variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_permission_scope#argument-reference

variable "azureAdApplicationPermissionScopeAdminConsentDescription" {
  type = string
}

variable "azureAdApplicationPermissionScopeAdminConsentDisplayName" {
  type = string
}

variable "azureAdApplicationPermissionScopeApplicationObjectId" {
  type = string
}

variable "azureAdApplicationPermissionScopeType" {
  type    = string
  default = "User"
}

variable "azureAdApplicationPermissionScopeUserConsentDescription" {
  type    = string
  default = "none"
}

variable "azureAdApplicationPermissionScopeUserConsentDisplayName" {
  type    = string
  default = "none"
}

variable "azureAdApplicationPermissionScopeValue" {
  type = string
}