variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#argument-reference

variable "CARARAA_AzureAdResourceApplicationDeviceOnlyAuthEnabled" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdResourceApplicationFallbackPublicClientEnabled" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdResourceApplicationFeaturetags" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#custom_single_sign_on
    custom_single_sign_on = optional(bool, null)
    enterprise            = optional(bool, null)
    gallery               = optional(bool, null)
    hide                  = optional(bool, null)
  })
  default = null
}

variable "CARARAA_AzureAdResourceApplicationGroupMembershipClaims" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdResourceApplicationIdentifierUris" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdResourceApplicationLogoImage" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdResourceApplicationMarketingUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdResourceApplicationOauth2PostResponseRequried" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdResourceApplicationOwners" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdResourceApplicationPassword" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#end_date
    display_name = string
    end_date     = optional(string, null)
    start_date   = optional(string, null)
  })
  default = null
}

variable "CARARAA_AzureAdResourceApplicationPreventDuplicateNames" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdResourceApplicationPrivacyStatementUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdResourceApplicationPublicClient" {
  type = object({
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_AzureAdResourceApplicationSignInAudience" {
  type = string
  validation {
    condition = var.CARARAA_AzureAdResourceApplicationSignInAudience == null || can(contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs",
      "AzureADPersonalMicrosoftAccount",
      "PersonalMicrosoftAccount"
    ], var.CARARAA_AzureAdResourceApplicationSignInAudience))
    error_message = "Valid inputs for | variable: CARARAA_AzureAdResourceApplicationSignInAudience | are: AzureADMyOrg, AzureADMultipleOrgs, AzureADPersonalMicrosoftAccount, PersonalMicrosoftAccount"
  }
  default = null
}

variable "CARARAA_AzureAdResourceApplicationSinglePageApplication" {
  type = object({ #One section above -> https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#homepage_url
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_AzureAdResourceApplicationSupportUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdResourceApplicationTags" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdResourceApplicationTemplateId" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdResourceApplicationTermsOfServiceUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdResourceApplicationWeb" {
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

#---

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#argument-reference

variable "CARARAA_AzureAdClientApplicationDeviceOnlyAuthEnabled" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdClientApplicationFallbackPublicClientEnabled" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdClientApplicationFeaturetags" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#custom_single_sign_on
    custom_single_sign_on = optional(bool, null)
    enterprise            = optional(bool, null)
    gallery               = optional(bool, null)
    hide                  = optional(bool, null)
  })
  default = null
}

variable "CARARAA_AzureAdClientApplicationGroupMembershipClaims" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdClientApplicationIdentifierUris" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdClientApplicationLogoImage" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdClientApplicationMarketingUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdClientApplicationOauth2PostResponseRequried" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdClientApplicationOwners" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdClientApplicationPassword" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#end_date
    display_name = string
    end_date     = optional(string, null)
    start_date   = optional(string, null)
  })
  default = null
}

variable "CARARAA_AzureAdClientApplicationPreventDuplicateNames" {
  type    = bool
  default = false
}

variable "CARARAA_AzureAdClientApplicationPrivacyStatementUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdClientApplicationPublicClient" {
  type = object({
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_AzureAdClientApplicationSignInAudience" {
  type = string
  validation {
    condition = var.CARARAA_AzureAdClientApplicationSignInAudience == null || can(contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs",
      "AzureADPersonalMicrosoftAccount",
      "PersonalMicrosoftAccount"
    ], var.CARARAA_AzureAdClientApplicationSignInAudience))
    error_message = "Valid inputs for | variable: CARARAA_AzureAdClientApplicationSignInAudience | are: AzureADMyOrg, AzureADMultipleOrgs, AzureADPersonalMicrosoftAccount, PersonalMicrosoftAccount"
  }
  default = null
}

variable "CARARAA_AzureAdClientApplicationSinglePageApplication" {
  type = object({ #One section above -> https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#homepage_url
    redirect_uris = list(string)
  })
  default = null
}

variable "CARARAA_AzureAdClientApplicationSupportUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdClientApplicationTags" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdClientApplicationTemplateId" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdClientApplicationTermsOfServiceUrl" {
  type    = string
  default = null
}

variable "CARARAA_AzureAdClientApplicationWeb" {
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

#---

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_permission_scope#argument-reference

variable "CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDescription" {
  type = string
}

variable "CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName" {
  type = string
}

variable "CARARAA_AzureAdResourceApplicationPermissionScopeApplicationObjectId" {
  type = string
}

variable "CARARAA_AzureAdResourceApplicationPermissionScopeType" {
  type    = string
  default = "User"
}

variable "CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDescription" {
  type    = string
  default = "none"
}

variable "CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName" {
  type    = string
  default = "none"
}

variable "CARARAA_AzureAdResourceApplicationPermissionScopeValue" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_pre_authorized#argument-reference

variable "CARARAA_AzureAdResourceApplicationPreAuthorizedApplicationObjectId" {
  type = string
}

variable "CARARAA_AzureAdResourceApplicationPreAuthorizedApplicationClientId" {
  type = string
}

variable "CARARAA_AzureAdResourceApplicationPreAuthorizedPermissionIds" {
  type = list(string)
}

#---
#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#argument-reference

variable "CARARAA_AzureAdClientApplicationPasswordApplicationObjectId" {
  type = string
}

variable "CARARAA_AzureAdClientApplicationPasswordEndDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#end_date
  type    = string
  default = null
}

variable "CARARAA_AzureAdClientApplicationPasswordRoateWhenChanged" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#rotate_when_changed
  type    = map(string)
  default = null
}

variable "CARARAA_AzureAdClientApplicationPasswordStartDate" { #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password#start_date
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_api_access#argument-reference

variable "CARARAA_AzureAdClientApplicationApiAccessApiClientId" {
  type = string
}

variable "CARARAA_AzureAdClientApplicationApiAccessApplicationObjectId" {
  type = string
}

variable "CARARAA_AzureAdClientApplicationApiAccessRoleIds" {
  type    = list(string)
  default = null
}

variable "CARARAA_AzureAdClientApplicationApiAccessScopeIds" {
  type    = list(string)
  default = null
}

#---