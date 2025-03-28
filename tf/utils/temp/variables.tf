variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

variable "resourceName" {
  type = string
}

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


#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#argument-reference

variable "CR_CARARAA_AzureAdResourceApplicationDeviceOnlyAuthEnabled" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdResourceApplicationFallbackPublicClientEnabled" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdResourceApplicationFeaturetags" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#custom_single_sign_on
    custom_single_sign_on = optional(bool, null)
    enterprise            = optional(bool, null)
    gallery               = optional(bool, null)
    hide                  = optional(bool, null)
  })
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationGroupMembershipClaims" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationIdentifierUris" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationLogoImage" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationMarketingUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationOauth2PostResponseRequried" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdResourceApplicationOwners" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationPassword" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#end_date
    display_name = string
    end_date     = optional(string, null)
    start_date   = optional(string, null)
  })
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationPreventDuplicateNames" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdResourceApplicationPrivacyStatementUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationPublicClient" {
  type = object({
    redirect_uris = list(string)
  })
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationSignInAudience" {
  type = string
  validation {
    condition = var.CR_CARARAA_AzureAdResourceApplicationSignInAudience == null || can(contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs",
      "AzureADPersonalMicrosoftAccount",
      "PersonalMicrosoftAccount"
    ], var.CR_CARARAA_AzureAdResourceApplicationSignInAudience))
    error_message = "Valid inputs for | variable: CR_CARARAA_AzureAdResourceApplicationSignInAudience | are: AzureADMyOrg, AzureADMultipleOrgs, AzureADPersonalMicrosoftAccount, PersonalMicrosoftAccount"
  }
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationSinglePageApplication" {
  type = object({ #One section above -> https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#homepage_url
    redirect_uris = list(string)
  })
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationSupportUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationTags" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationTemplateId" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationTermsOfServiceUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdResourceApplicationWeb" {
  type = object({
    homepage_url = optional(string, null)

    implicit_grant = optional(object({
      access_token_issuance_enabled = optional(bool, null)
      id_token_issuance_enabled     = optional(bool, null)
    }), null)

    logout_url    = string
    redirect_uris = list(string)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#argument-reference

variable "CR_CARARAA_AzureAdClientApplicationDeviceOnlyAuthEnabled" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdClientApplicationFallbackPublicClientEnabled" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdClientApplicationFeaturetags" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#custom_single_sign_on
    custom_single_sign_on = optional(bool, null)
    enterprise            = optional(bool, null)
    gallery               = optional(bool, null)
    hide                  = optional(bool, null)
  })
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationGroupMembershipClaims" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationIdentifierUris" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationLogoImage" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationMarketingUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationOauth2PostResponseRequried" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdClientApplicationOwners" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationPassword" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#end_date
    display_name = string
    end_date     = optional(string, null)
    start_date   = optional(string, null)
  })
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationPreventDuplicateNames" {
  type    = bool
  default = false
}

variable "CR_CARARAA_AzureAdClientApplicationPrivacyStatementUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationPublicClient" {
  type = object({
    redirect_uris = list(string)
  })
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationSignInAudience" {
  type = string
  validation {
    condition = var.CR_CARARAA_AzureAdClientApplicationSignInAudience == null || can(contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs",
      "AzureADPersonalMicrosoftAccount",
      "PersonalMicrosoftAccount"
    ], var.CR_CARARAA_AzureAdClientApplicationSignInAudience))
    error_message = "Valid inputs for | variable: CR_CARARAA_AzureAdClientApplicationSignInAudience | are: AzureADMyOrg, AzureADMultipleOrgs, AzureADPersonalMicrosoftAccount, PersonalMicrosoftAccount"
  }
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationSinglePageApplication" {
  type = object({ #One section above -> https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#homepage_url
    redirect_uris = list(string)
  })
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationSupportUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationTags" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationTemplateId" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationTermsOfServiceUrl" {
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationWeb" {
  type = object({
    homepage_url = optional(string, null)

    implicit_grant = optional(object({
      access_token_issuance_enabled = optional(bool, null)
      id_token_issuance_enabled     = optional(bool, null)
    }), null)

    logout_url    = string
    redirect_uris = list(string)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_permission_scope#argument-reference

variable "CR_CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDescription" {
  type = string
}

variable "CR_CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName" {
  type = string
}

variable "CR_CARARAA_AzureAdResourceApplicationPermissionScopeType" {
  type    = string
  default = "User"
}

variable "CR_CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDescription" {
  type    = string
  default = "none"
}

variable "CR_CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName" {
  type    = string
  default = "none"
}

variable "CR_CARARAA_AzureAdResourceApplicationPermissionScopeValue" {
  type = string
}



#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_pre_authorized#argument-reference

variable "CR_CARARAA_AzureAdResourceApplicationPreAuthorizedPermissionIds" {
  type    = list(string)
  default = []
}


#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#argument-reference

variable "CR_CARARAA_AzureAdClientApplicationPasswordEndDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#end_date
  type    = string
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationPasswordRoateWhenChanged" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#rotate_when_changed
  type    = map(string)
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationPasswordStartDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#start_date
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_api_access#argument-reference

variable "CR_CARARAA_AzureAdClientApplicationApiAccessRoleIds" {
  type    = list(string)
  default = null
}

variable "CR_CARARAA_AzureAdClientApplicationApiAccessScopeIds" {
  type    = list(string)
  default = []
}



#---

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group#arguments-reference

variable "CR_RGKVASAR_ResourceGroupManagedBy" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#argument-reference

variable "CR_RGKVASAR_KeyVaultSkuName" {
  type = string
  validation {
    condition = contains([
      "standard",
      "premium"
    ], var.CR_RGKVASAR_KeyVaultSkuName)
    error_message = "Valid inputs for | variable: CR_RGKVASAR_KeyVaultSkuName | are: standard, premium"
  }
  default = "standard"
}

variable "CR_RGKVASAR_KeyVaultTenantId" {
  type = string
}

variable "CR_RGKVASAR_KeyVaultAccessPolicy" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#object_id
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

variable "CR_RGKVASAR_KeyVaultEnabledForDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_deployment
  type    = bool
  default = null
}

variable "CR_RGKVASAR_KeyVaultEnabledForDiskEncryption" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_disk_encryption
  type    = bool
  default = null
}

variable "CR_RGKVASAR_KeyVaultEnabledForTemplateDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_template_deployment
  type    = bool
  default = null
}

variable "CR_RGKVASAR_KeyVaultEnableRbacAuthorization" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enable_rbac_authorization
  type    = bool
  default = null
}

variable "CR_RGKVASAR_KeyVaultNetworkAcls" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#bypass
  type = object({
    bypass                     = string
    default_action             = string
    ip_rules                   = optional(list(string), null)
    virtual_network_subnet_ids = optional(list(string), null)
  })
  default = null
}

variable "CR_RGKVASAR_KeyVaultPurgeProtectionEnabled" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#purge_protection_enabled
  type    = bool
  default = null
}

variable "CR_RGKVASAR_KeyVaultPublicNetworkAccessEnabled" {
  type    = bool
  default = true
}

variable "CR_RGKVASAR_KeyVaultSoftDeleteRetentionDays" {
  type = number
  validation {
    condition     = var.CR_RGKVASAR_KeyVaultSoftDeleteRetentionDays == null || can(var.CR_RGKVASAR_KeyVaultSoftDeleteRetentionDays >= 7 && var.CR_RGKVASAR_KeyVaultSoftDeleteRetentionDays <= 90)
    error_message = "Variable CR_RGKVASAR_KeyVaultSoftDeleteRetentionDays must be greater than or equal to 7 and less than or equal to 90"
  }
  default = null
}

variable "CR_RGKVASAR_KeyVaultContact" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#email
  type = object({
    email = string
    name  = optional(string, null)
    phone = optional(string, null)
  })
  default = null
}


#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#argument-reference

#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#argument-reference

variable "CR_RGKVASAR_KeyVaultSecretObjects" {
  type = list(object({
    name            = string
    value           = string
    content_type    = optional(string, null)
    not_before_date = optional(string, null)
    expiration_date = optional(string, null)
  }))
}



#---
