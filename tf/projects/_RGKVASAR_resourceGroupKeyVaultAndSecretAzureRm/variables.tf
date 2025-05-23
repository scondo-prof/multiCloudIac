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

variable "azurermRegion" { #https://gist.github.com/ausfestivus/04e55c7d80229069bf3bc75870630ec8
  type    = string
  default = "eastus"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group#arguments-reference

variable "RGKVASAR_ResourceGroupManagedBy" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#argument-reference

variable "RGKVASAR_KeyVaultSkuName" {
  type = string
  validation {
    condition = contains([
      "standard",
      "premium"
    ], var.RGKVASAR_KeyVaultSkuName)
    error_message = "Valid inputs for | variable: RGKVASAR_KeyVaultSkuName | are: standard, premium"
  }
  default = "standard"
}

variable "RGKVASAR_KeyVaultTenantId" {
  type = string
}

variable "RGKVASAR_KeyVaultAccessPolicy" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#object_id
  type = list(object({
    tenant_id               = string
    object_id               = string
    application_id          = optional(string, null)
    certificate_permissions = optional(list(string), null)
    key_permissions         = optional(list(string), null)
    secret_permissions      = optional(list(string), null)
    storage_permissions     = optional(list(string), null)
  }))
  default = null
}

variable "RGKVASAR_KeyVaultEnabledForDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_deployment
  type    = bool
  default = null
}

variable "RGKVASAR_KeyVaultEnabledForDiskEncryption" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_disk_encryption
  type    = bool
  default = null
}

variable "RGKVASAR_KeyVaultEnabledForTemplateDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_template_deployment
  type    = bool
  default = null
}

variable "RGKVASAR_KeyVaultEnableRbacAuthorization" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enable_rbac_authorization
  type    = bool
  default = null
}

variable "RGKVASAR_KeyVaultNetworkAcls" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#bypass
  type = object({
    bypass                     = string
    default_action             = string
    ip_rules                   = optional(list(string), null)
    virtual_network_subnet_ids = optional(list(string), null)
  })
  default = null
}

variable "RGKVASAR_KeyVaultPurgeProtectionEnabled" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#purge_protection_enabled
  type    = bool
  default = null
}

variable "RGKVASAR_KeyVaultPublicNetworkAccessEnabled" {
  type    = bool
  default = true
}

variable "RGKVASAR_KeyVaultSoftDeleteRetentionDays" {
  type = number
  validation {
    condition     = var.RGKVASAR_KeyVaultSoftDeleteRetentionDays == null || can(var.RGKVASAR_KeyVaultSoftDeleteRetentionDays >= 7 && var.RGKVASAR_KeyVaultSoftDeleteRetentionDays <= 90)
    error_message = "Variable RGKVASAR_KeyVaultSoftDeleteRetentionDays must be greater than or equal to 7 and less than or equal to 90"
  }
  default = null
}

variable "RGKVASAR_KeyVaultContact" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#email
  type = object({
    email = string
    name  = optional(string, null)
    phone = optional(string, null)
  })
  default = null
}

#---
#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#argument-reference

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#argument-reference

variable "RGKVASAR_KeyVaultSecretObjects" {
  type = list(object({
    name            = string
    value           = string
    content_type    = optional(string, null)
    not_before_date = optional(string, null)
    expiration_date = optional(string, null)
  }))
}

#---