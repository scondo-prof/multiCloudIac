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

variable "resourceName" {
  type = string
}

variable "keyVaultSecretValue" {
  type = string
}

variable "keyVaultSecretVaultId" {
  type = string
}

variable "keyVaultSecretContentType" {
  type = string
  validation {
    condition = var.keyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: keyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

variable "keyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "keyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}