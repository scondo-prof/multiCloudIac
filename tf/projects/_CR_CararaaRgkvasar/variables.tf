variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationDeviceOnlyAuthEnabled" {
  type    = bool
  default = false
}

variable "resourceName" {
  type = string
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationFallbackPublicClientEnabled" {
  type    = bool
  default = false
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationFeaturetags" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#custom_single_sign_on
    custom_single_sign_on = optional(bool, null)
    enterprise            = optional(bool, null)
    gallery               = optional(bool, null)
    hide                  = optional(bool, null)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationGroupMembershipClaims" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationIdentifierUris" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationLogoImage" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationMarketingUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationOauth2PostResponseRequried" {
  type    = bool
  default = false
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationOwners" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPassword" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#end_date
    display_name = string
    end_date     = optional(string, null)
    start_date   = optional(string, null)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPreventDuplicateNames" {
  type    = bool
  default = false
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPrivacyStatementUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPublicClient" {
  type = object({
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationSignInAudience" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_AzureAdResourceApplicationSignInAudience == null || can(contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs",
      "AzureADPersonalMicrosoftAccount",
      "PersonalMicrosoftAccount"
    ], var.CARARAA_RGKVASAR_AzureAdResourceApplicationSignInAudience))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_AzureAdResourceApplicationSignInAudience | are: AzureADMyOrg, AzureADMultipleOrgs, AzureADPersonalMicrosoftAccount, PersonalMicrosoftAccount"
  }
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationSinglePageApplication" {
  type = object({ #One section above -> https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#homepage_url
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationSupportUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationTags" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationTemplateId" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationTermsOfServiceUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationWeb" {
  type = object({
    homepage_url = optional(string, null)

    implicit_grant = optional(object({
      access_token_issuance_enabled = optional(bool, null)
      id_token_issuance_enabled     = optional(bool, null)
    }), null)

    logout_url    = optional(string, null)
    redirect_uris = optional(list(string), null)
  })
  default = null
}

#--

variable "CARARAA_RGKVASAR_AzureAdClientApplicationDeviceOnlyAuthEnabled" {
  type    = bool
  default = false
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationFallbackPublicClientEnabled" {
  type    = bool
  default = false
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationFeaturetags" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#custom_single_sign_on
    custom_single_sign_on = optional(bool, null)
    enterprise            = optional(bool, null)
    gallery               = optional(bool, null)
    hide                  = optional(bool, null)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationGroupMembershipClaims" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationIdentifierUris" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationLogoImage" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationMarketingUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationOauth2PostResponseRequried" {
  type    = bool
  default = false
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationOwners" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationPassword" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#end_date
    display_name = string
    end_date     = optional(string, null)
    start_date   = optional(string, null)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationPreventDuplicateNames" {
  type    = bool
  default = false
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationPrivacyStatementUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationPublicClient" {
  type = object({
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationSignInAudience" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_AzureAdClientApplicationSignInAudience == null || can(contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs",
      "AzureADPersonalMicrosoftAccount",
      "PersonalMicrosoftAccount"
    ], var.CARARAA_RGKVASAR_AzureAdClientApplicationSignInAudience))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_AzureAdClientApplicationSignInAudience | are: AzureADMyOrg, AzureADMultipleOrgs, AzureADPersonalMicrosoftAccount, PersonalMicrosoftAccount"
  }
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationSinglePageApplication" {
  type = object({ #One section above -> https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#homepage_url
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationSupportUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationTags" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationTemplateId" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationTermsOfServiceUrl" {
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationWeb" {
  type = object({
    homepage_url = optional(string, null)

    implicit_grant = optional(object({
      access_token_issuance_enabled = optional(bool, null)
      id_token_issuance_enabled     = optional(bool, null)
    }), null)

    logout_url    = optional(string, null)
    redirect_uris = optional(list(string), null)
  })
  default = null
}

#--

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeAdminConsentDescription" {
  type = string
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName" {
  type = string
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeType" {
  type    = string
  default = "User"
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeUserConsentDescription" {
  type    = string
  default = "none"
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName" {
  type    = string
  default = "none"
}

variable "CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeValue" {
  type = string
}

#--

variable "CARARAA_RGKVASAR_AdditionalAzureAdResourceApplicationPreAuthorizedPermissionIds" {
  type    = list(string)
  default = []
}

#--

variable "CARARAA_RGKVASAR_AzureAdClientApplicationPasswordEndDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#end_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationPasswordRoateWhenChanged" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#rotate_when_changed
  type    = map(string)
  default = null
}

variable "CARARAA_RGKVASAR_AzureAdClientApplicationPasswordStartDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#start_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_AzureAdClientApplicationApiAccessApiAccessRoleIds" {
  type    = list(string)
  default = null
}

variable "CARARAA_RGKVASAR_AdditionalAzureAdClientApplicationApiAccessApiAccessScopeIds" {
  type    = list(string)
  default = []
}

#--

variable "azurermSubscriptionId" {
  type    = string
  default = "dad93de7-5388-43ff-86d8-5a1b9b2e87ce"
}

variable "azurermRegion" { #https://gist.github.com/ausfestivus/04e55c7d80229069bf3bc75870630ec8
  type    = string
  default = "eastus"
}

variable "CARARAA_RGKVASAR_ResourceGroupManagedBy" {
  type    = string
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

#--

variable "azurermKeyVaultPurgeSoftDeleteOnDestroy" {
  type    = bool
  default = true
}

variable "azurermKeyVaultRecoverSoftDeletedKeyVaults" {
  type    = bool
  default = true
}

variable "CARARAA_RGKVASAR_KeyVaultSkuName" {
  type = string
  validation {
    condition = contains([
      "standard",
      "premium"
    ], var.CARARAA_RGKVASAR_KeyVaultSkuName)
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_KeyVaultSkuName | are: standard, premium"
  }
  default = "standard"
}

variable "azureRmTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

variable "CARARAA_RGKVASAR_KeyVaultAccessPolicy" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#object_id
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

variable "CARARAA_RGKVASAR_KeyVaultEnabledForDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_deployment
  type    = bool
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultEnabledForDiskEncryption" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_disk_encryption
  type    = bool
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultEnabledForTemplateDeployment" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enabled_for_template_deployment
  type    = bool
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultEnableRbacAuthorization" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#enable_rbac_authorization
  type    = bool
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultNetworkAcls" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#bypass
  type = object({
    bypass                     = string
    default_action             = string
    ip_rules                   = optional(list(string), null)
    virtual_network_subnet_ids = optional(list(string), null)
  })
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultPurgeProtectionEnabled" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#purge_protection_enabled
  type    = bool
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultPublicNetworkAccessEnabled" {
  type    = bool
  default = true
}

variable "CARARAA_RGKVASAR_KeyVaultSoftDeleteRetentionDays" {
  type = number
  validation {
    condition     = var.CARARAA_RGKVASAR_KeyVaultSoftDeleteRetentionDays == null || can(var.CARARAA_RGKVASAR_KeyVaultSoftDeleteRetentionDays >= 7 && var.CARARAA_RGKVASAR_KeyVaultSoftDeleteRetentionDays <= 90)
    error_message = "Variable CARARAA_RGKVASAR_KeyVaultSoftDeleteRetentionDays must be greater than or equal to 7 and less than or equal to 90"
  }
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultContact" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault#email
  type = object({
    email = string
    name  = optional(string, null)
    phone = optional(string, null)
  })
  default = null
}

#--

variable "CARARAA_RGKVASAR_KeyVaultSecretValue" {
  type = string
}

variable "CARARAA_RGKVASAR_KeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_KeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_KeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_KeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}

#--

variable "CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretContentType" {
  type = string
  validation {
    condition = var.CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretContentType == null || can(contains([
      "application/json",
      "text/plain",
      "application/x-pem-file"
    ]))
    error_message = "Valid inputs for | variable: CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretContentType | are: application/json, text/plain, application/x-pem-file"
  }
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretNotBeforeDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#not_before_date
  type    = string
  default = null
}

variable "CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretExperiationDate" { #https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#expiration_date
  type    = string
  default = null
}