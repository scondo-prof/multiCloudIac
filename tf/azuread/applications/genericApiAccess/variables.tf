variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_api_access#argument-reference

variable "azureAdApplicationApiAccessApiClientId" {
  type = string
}

variable "azureAdApplicationApiAccessApplicationObjectId" {
  type = string
}

variable "azureAdApplicationApiAccessRoleIds" {
  type    = list(string)
  default = null
}

variable "azureAdApplicationApiAccessScopeIds" {
  type    = list(string)
  default = null
}