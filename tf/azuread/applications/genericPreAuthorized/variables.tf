variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_pre_authorized#argument-reference

variable "azureAdApplicationPreAuthorizedApplicationObjectId" {
  type = string
}

variable "azureAdApplicationPreAuthorizedApplicationClientId" {
  type = string
}

variable "azureAdApplicationPreAuthorizedPermissionIds" {
  type = list(string)
}