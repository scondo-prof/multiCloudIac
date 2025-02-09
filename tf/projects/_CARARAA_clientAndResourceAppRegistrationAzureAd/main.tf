terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.0.2"
    }
  }
}

provider "azuread" {
  tenant_id = var.azureAdTenantId
}

module "azureAdResourceApplication" {
  source = "../../azuread/applications/genericApplication"

  azureAdTenantId                               = var.azureAdTenantId
  azureAdApplicationDeviceOnlyAuthEnabled       = var.CARARAA_AzureAdResourceApplicationDeviceOnlyAuthEnabled
  resourceName                                  = "${var.resourceName}-resource"
  azureAdApplicationFallbackPublicClientEnabled = var.CARARAA_AzureAdResourceApplicationFallbackPublicClientEnabled
  azureAdApplicationFeaturetags                 = var.CARARAA_AzureAdResourceApplicationFeaturetags
  azureAdApplicationGroupMembershipClaims       = var.CARARAA_AzureAdResourceApplicationGroupMembershipClaims
  azureAdApplicationIdentifierUris              = var.CARARAA_AzureAdResourceApplicationIdentifierUris
  azureAdApplicationLogoImage                   = var.CARARAA_AzureAdResourceApplicationLogoImage
  azureAdApplicationMarketingUrl                = var.CARARAA_AzureAdResourceApplicationMarketingUrl
  azureAdApplicationOauth2PostResponseRequried  = var.CARARAA_AzureAdResourceApplicationOauth2PostResponseRequried
  azureAdApplicationOwners                      = var.CARARAA_AzureAdResourceApplicationOwners
  azureAdApplicationPreventDuplicateNames       = var.CARARAA_AzureAdResourceApplicationPreventDuplicateNames
  azureAdApplicationPrivacyStatementUrl         = var.CARARAA_AzureAdResourceApplicationPrivacyStatementUrl
  azureAdApplicationPublicClient                = var.CARARAA_AzureAdResourceApplicationPublicClient
  azureAdApplicationSignInAudience              = var.CARARAA_AzureAdResourceApplicationSignInAudience
  azureAdApplicationSinglePageApplication       = var.CARARAA_AzureAdResourceApplicationSinglePageApplication
  azureAdApplicationSupportUrl                  = var.CARARAA_AzureAdResourceApplicationSupportUrl
  azureAdApplicationTags                        = var.CARARAA_AzureAdResourceApplicationTags
  azureAdApplicationTemplateId                  = var.CARARAA_AzureAdResourceApplicationTemplateId
  azureAdApplicationTermsOfServiceUrl           = var.CARARAA_AzureAdResourceApplicationTermsOfServiceUrl
  azureAdApplicationWeb                         = var.CARARAA_AzureAdResourceApplicationWeb
}

module "azureAdClientApplication" {
  source = "../../azuread/applications/genericApplication"

  azureAdTenantId                               = var.azureAdTenantId
  azureAdApplicationDeviceOnlyAuthEnabled       = var.CARARAA_AzureAdClientApplicationDeviceOnlyAuthEnabled
  resourceName                                  = "${var.resourceName}-client"
  azureAdApplicationFallbackPublicClientEnabled = var.CARARAA_AzureAdClientApplicationFallbackPublicClientEnabled
  azureAdApplicationFeaturetags                 = var.CARARAA_AzureAdClientApplicationFeaturetags
  azureAdApplicationGroupMembershipClaims       = var.CARARAA_AzureAdClientApplicationGroupMembershipClaims
  azureAdApplicationIdentifierUris              = var.CARARAA_AzureAdClientApplicationIdentifierUris
  azureAdApplicationLogoImage                   = var.CARARAA_AzureAdClientApplicationLogoImage
  azureAdApplicationMarketingUrl                = var.CARARAA_AzureAdClientApplicationMarketingUrl
  azureAdApplicationOauth2PostResponseRequried  = var.CARARAA_AzureAdClientApplicationOauth2PostResponseRequried
  azureAdApplicationOwners                      = var.CARARAA_AzureAdClientApplicationOwners
  azureAdApplicationPreventDuplicateNames       = var.CARARAA_AzureAdClientApplicationPreventDuplicateNames
  azureAdApplicationPrivacyStatementUrl         = var.CARARAA_AzureAdClientApplicationPrivacyStatementUrl
  azureAdApplicationPublicClient                = var.CARARAA_AzureAdClientApplicationPublicClient
  azureAdApplicationSignInAudience              = var.CARARAA_AzureAdClientApplicationSignInAudience
  azureAdApplicationSinglePageApplication       = var.CARARAA_AzureAdClientApplicationSinglePageApplication
  azureAdApplicationSupportUrl                  = var.CARARAA_AzureAdClientApplicationSupportUrl
  azureAdApplicationTags                        = var.CARARAA_AzureAdClientApplicationTags
  azureAdApplicationTemplateId                  = var.CARARAA_AzureAdClientApplicationTemplateId
  azureAdApplicationTermsOfServiceUrl           = var.CARARAA_AzureAdClientApplicationTermsOfServiceUrl
  azureAdApplicationWeb                         = var.CARARAA_AzureAdClientApplicationWeb
}

module "azureAdResourceApplicationPermissionScope" {
  source = "../../azuread/applications/genericPermissionScope"

  azureAdTenantId                                          = var.azureAdTenantId
  azureAdApplicationPermissionScopeAdminConsentDescription = var.CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDescription
  azureAdApplicationPermissionScopeAdminConsentDisplayName = var.CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName
  azureAdApplicationPermissionScopeApplicationObjectId     = "applications/${module.azureAdResourceApplication.azureAdApplicationObjectId}"
  azureAdApplicationPermissionScopeType                    = var.CARARAA_AzureAdResourceApplicationPermissionScopeType
  azureAdApplicationPermissionScopeUserConsentDescription  = var.CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDescription
  azureAdApplicationPermissionScopeUserConsentDisplayName  = var.CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName
  azureAdApplicationPermissionScopeValue                   = var.CARARAA_AzureAdResourceApplicationPermissionScopeValue
}

module "azureAdResourceApplicationPreAuthorized" {
  source = "../../azuread/applications/genericPreAuthorized"

  azureAdTenantId                                    = var.azureAdTenantId
  azureAdApplicationPreAuthorizedApplicationObjectId = "applications/${module.azureAdResourceApplication.azureAdApplicationObjectId}"
  azureAdApplicationPreAuthorizedApplicationClientId = module.azureAdClientApplication.azureAdApplicationClientId
  azureAdApplicationPreAuthorizedPermissionIds       = concat([module.azureAdResourceApplicationPermissionScope.azureAdApplicationPermissionScopeId], var.CARARAA_AdditionalAzureAdResourceApplicationPreAuthorizedPermissionIds)
}

module "azureAdClientApplicationPassword" {
  source = "../../azuread/applications/genericSecret"

  azureAdTenantId                               = var.azureAdTenantId
  azureAdApplicationPasswordApplicationObjectId = "applications/${module.azureAdClientApplication.azureAdApplicationObjectId}"
  resourceName                                  = "${var.resourceName}-client"
  azureAdApplicationPasswordEndDate             = var.CARARAA_AzureAdClientApplicationPasswordEndDate
  azureAdApplicationPasswordRoateWhenChanged    = var.CARARAA_AzureAdClientApplicationPasswordRoateWhenChanged
  azureAdApplicationPasswordStartDate           = var.CARARAA_AzureAdClientApplicationPasswordStartDate
}

module "azureAdClientApplicationApiAccess" {
  source = "../../azuread/applications/genericApiAccess"

  azureAdTenantId                                = var.azureAdTenantId
  azureAdApplicationApiAccessApiClientId         = module.azureAdResourceApplication.azureAdApplicationClientId
  azureAdApplicationApiAccessApplicationObjectId = "applications/${module.azureAdClientApplication.azureAdApplicationObjectId}"
  azureAdApplicationApiAccessRoleIds             = var.CARARAA_AzureAdClientApplicationApiAccessApiAccessRoleIds
  azureAdApplicationApiAccessScopeIds            = concat([module.azureAdResourceApplicationPermissionScope.azureAdApplicationPermissionScopeId], var.CARARAA_AdditionalAzureAdClientApplicationApiAccessApiAccessScopeIds)
}