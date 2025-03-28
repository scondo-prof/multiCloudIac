variable "azurermKeyVaultPurgeSoftDeleteOnDestroy" {
  type    = bool
  default = true
}

variable "azurermKeyVaultRecoverSoftDeletedKeyVaults" {
  type    = bool
  default = true
}

variable "azurermSubscriptionId" {
  type    = string
  default = "dad93de7-5388-43ff-86d8-5a1b9b2e87ce"
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#argument-reference

variable "keyVaultSecretObjects" {
  type = list(object({
    name            = string
    value           = string
    content_type    = optional(string, null)
    not_before_date = optional(string, null)
    expiration_date = optional(string, null)
  }))
}

variable "keyVaultSecretVaultId" {
  type = string
}