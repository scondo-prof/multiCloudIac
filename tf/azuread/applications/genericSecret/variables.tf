variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

variable "resourceName" {
  type = string
}
#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#argument-reference

variable "azureAdApplicationPasswordApplicationObjectId" {
  type = string
}

variable "azureAdApplicationPasswordEndDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#end_date
  type    = string
  default = null
}

variable "azureAdApplicationPasswordRoateWhenChanged" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#rotate_when_changed
  type    = map(string)
  default = null
}

variable "azureAdApplicationPasswordStartDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#start_date
  type    = string
  default = null
}