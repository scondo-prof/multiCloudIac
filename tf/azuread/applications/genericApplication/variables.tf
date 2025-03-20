variable "azureAdTenantId" {
  type    = string
  default = "c251bfb1-a539-45ec-a5e0-8911fffbb0a9"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#argument-reference

variable "azureAdApplicationDeviceOnlyAuthEnabled" {
  type    = bool
  default = false
}

variable "azureAdApplicationFallbackPublicClientEnabled" {
  type    = bool
  default = false
}

variable "azureAdApplicationFeaturetags" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#custom_single_sign_on
    custom_single_sign_on = optional(bool, null)
    enterprise            = optional(bool, null)
    gallery               = optional(bool, null)
    hide                  = optional(bool, null)
  })
  default = null
}

variable "azureAdApplicationGroupMembershipClaims" {
  type    = list(string)
  default = null
}

variable "azureAdApplicationIdentifierUris" {
  type    = list(string)
  default = null
}

variable "azureAdApplicationLogoImage" {
  type    = string
  default = null
}

variable "azureAdApplicationMarketingUrl" {
  type    = string
  default = null
}

variable "azureAdApplicationOauth2PostResponseRequried" {
  type    = bool
  default = false
}

variable "azureAdApplicationOwners" {
  type    = list(string)
  default = null
}

variable "azureAdApplicationPassword" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#end_date
    display_name = string
    end_date     = optional(string, null)
    start_date   = optional(string, null)
  })
  default = null
}

variable "azureAdApplicationPreventDuplicateNames" {
  type    = bool
  default = false
}

variable "azureAdApplicationPrivacyStatementUrl" {
  type    = string
  default = null
}

variable "azureAdApplicationPublicClient" {
  type = object({
    redirect_uris = list(string)
  })
  default = null
}

variable "azureAdApplicationSignInAudience" {
  type = string
  validation {
    condition = var.azureAdApplicationSignInAudience == null || can(contains([
      "AzureADMyOrg",
      "AzureADMultipleOrgs",
      "AzureADPersonalMicrosoftAccount",
      "PersonalMicrosoftAccount"
    ], var.azureAdApplicationSignInAudience))
    error_message = "Valid inputs for | variable: azureAdApplicationSignInAudience | are: AzureADMyOrg, AzureADMultipleOrgs, AzureADPersonalMicrosoftAccount, PersonalMicrosoftAccount"
  }
  default = null
}

variable "azureAdApplicationSinglePageApplication" {
  type = object({ #One section above -> https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application#homepage_url
    redirect_uris = list(string)
  })
  default = null
}

variable "azureAdApplicationSupportUrl" {
  type    = string
  default = null
}

variable "azureAdApplicationTags" {
  type    = list(string)
  default = null
}

variable "azureAdApplicationTemplateId" {
  type    = string
  default = null
}

variable "azureAdApplicationTermsOfServiceUrl" {
  type    = string
  default = null
}

variable "azureAdApplicationWeb" {
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