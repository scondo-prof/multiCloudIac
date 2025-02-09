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

variable "azurermRegion" { #https://gist.github.com/ausfestivus/04e55c7d80229069bf3bc75870630ec8
  type    = string
  default = "eastus"
}

variable "keyVaultResourceGroupName" {
  type = string
}

variable "keyVaultSkuName" {
  type = string
  validation {
    condition = contains([
      "standard",
      "premium"
    ], var.keyVaultSkuName)
    error_message = "Valid inputs for | variable: keyVaultSkuName | are: standard, premium"
  }
  default = "standard"
}

variable "keyVaultTenantId" {
  type = string
}

variable "keyVaultAccessPolicy" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#object_id
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

variable "keyVaultEnabledForDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_deployment
  type    = bool
  default = null
}

variable "keyVaultEnabledForDiskEncryption" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_disk_encryption
  type    = bool
  default = null
}

variable "keyVaultEnabledForTemplateDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_template_deployment
  type    = bool
  default = null
}

variable "keyVaultEnableRbacAuthorization" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enable_rbac_authorization
  type    = bool
  default = null
}

variable "keyVaultNetworkAcls" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#bypass
  type = object({
    bypass                     = string
    default_action             = string
    ip_rules                   = optional(list(string), null)
    virtual_network_subnet_ids = optional(list(string), null)
  })
  default = null
}

variable "keyVaultPurgeProtectionEnabled" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#purge_protection_enabled
  type    = bool
  default = null
}

variable "keyVaultPublicNetworkAccessEnabled" {
  type    = bool
  default = true
}

variable "keyVaultSoftDeleteRetentionDays" {
  type = number
  validation {
    condition     = var.keyVaultSoftDeleteRetentionDays == null || can(var.keyVaultSoftDeleteRetentionDays >= 7 && var.keyVaultSoftDeleteRetentionDays <= 90)
    error_message = "Variable keyVaultSoftDeleteRetentionDays must be greater than or equal to 7 and less than or equal to 90"
  }
  default = null
}

variable "keyVaultContact" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#email
  type = object({
    email = string
    name  = optional(string, null)
    phone = optional(string, null)
  })
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