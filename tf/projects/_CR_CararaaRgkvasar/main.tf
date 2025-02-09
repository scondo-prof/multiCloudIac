terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.0.2"
    }
  }
}

module "CARARAA" {
  source = "../_CARARAA_clientAndResourceAppRegistrationAzureAd"

  azureAdTenantId                                               = var.azureAdTenantId
  CARARAA_AzureAdResourceApplicationDeviceOnlyAuthEnabled       = var.CARARAA_RGKVASAR_AzureAdResourceApplicationDeviceOnlyAuthEnabled
  resourceName                                                  = var.resourceName
  CARARAA_AzureAdResourceApplicationFallbackPublicClientEnabled = var.CARARAA_RGKVASAR_AzureAdResourceApplicationFallbackPublicClientEnabled
  CARARAA_AzureAdResourceApplicationFeaturetags                 = var.CARARAA_RGKVASAR_AzureAdResourceApplicationFeaturetags
  CARARAA_AzureAdResourceApplicationGroupMembershipClaims       = var.CARARAA_RGKVASAR_AzureAdResourceApplicationGroupMembershipClaims
  CARARAA_AzureAdResourceApplicationIdentifierUris              = var.CARARAA_RGKVASAR_AzureAdResourceApplicationIdentifierUris
  CARARAA_AzureAdResourceApplicationLogoImage                   = var.CARARAA_RGKVASAR_AzureAdResourceApplicationLogoImage
  CARARAA_AzureAdResourceApplicationMarketingUrl                = var.CARARAA_RGKVASAR_AzureAdResourceApplicationMarketingUrl
  CARARAA_AzureAdResourceApplicationOauth2PostResponseRequried  = var.CARARAA_RGKVASAR_AzureAdResourceApplicationOauth2PostResponseRequried
  CARARAA_AzureAdResourceApplicationOwners                      = var.CARARAA_RGKVASAR_AzureAdResourceApplicationOwners
  CARARAA_AzureAdResourceApplicationPreventDuplicateNames       = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPreventDuplicateNames
  CARARAA_AzureAdResourceApplicationPrivacyStatementUrl         = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPrivacyStatementUrl
  CARARAA_AzureAdResourceApplicationPublicClient                = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPublicClient
  CARARAA_AzureAdResourceApplicationSignInAudience              = var.CARARAA_RGKVASAR_AzureAdResourceApplicationSignInAudience
  CARARAA_AzureAdResourceApplicationSinglePageApplication       = var.CARARAA_RGKVASAR_AzureAdResourceApplicationSinglePageApplication
  CARARAA_AzureAdResourceApplicationSupportUrl                  = var.CARARAA_RGKVASAR_AzureAdResourceApplicationSupportUrl
  CARARAA_AzureAdResourceApplicationTags                        = var.CARARAA_RGKVASAR_AzureAdResourceApplicationTags
  CARARAA_AzureAdResourceApplicationTemplateId                  = var.CARARAA_RGKVASAR_AzureAdResourceApplicationTemplateId
  CARARAA_AzureAdResourceApplicationTermsOfServiceUrl           = var.CARARAA_RGKVASAR_AzureAdResourceApplicationTermsOfServiceUrl
  CARARAA_AzureAdResourceApplicationWeb                         = var.CARARAA_RGKVASAR_AzureAdResourceApplicationWeb

  #--
  CARARAA_AzureAdClientApplicationDeviceOnlyAuthEnabled       = var.CARARAA_RGKVASAR_AzureAdClientApplicationDeviceOnlyAuthEnabled
  CARARAA_AzureAdClientApplicationFallbackPublicClientEnabled = var.CARARAA_RGKVASAR_AzureAdClientApplicationFallbackPublicClientEnabled
  CARARAA_AzureAdClientApplicationFeaturetags                 = var.CARARAA_RGKVASAR_AzureAdClientApplicationFeaturetags
  CARARAA_AzureAdClientApplicationGroupMembershipClaims       = var.CARARAA_RGKVASAR_AzureAdClientApplicationGroupMembershipClaims
  CARARAA_AzureAdClientApplicationIdentifierUris              = var.CARARAA_RGKVASAR_AzureAdClientApplicationIdentifierUris
  CARARAA_AzureAdClientApplicationLogoImage                   = var.CARARAA_RGKVASAR_AzureAdClientApplicationLogoImage
  CARARAA_AzureAdClientApplicationMarketingUrl                = var.CARARAA_RGKVASAR_AzureAdClientApplicationMarketingUrl
  CARARAA_AzureAdClientApplicationOauth2PostResponseRequried  = var.CARARAA_RGKVASAR_AzureAdClientApplicationOauth2PostResponseRequried
  CARARAA_AzureAdClientApplicationOwners                      = var.CARARAA_RGKVASAR_AzureAdClientApplicationOwners
  CARARAA_AzureAdClientApplicationPreventDuplicateNames       = var.CARARAA_RGKVASAR_AzureAdClientApplicationPreventDuplicateNames
  CARARAA_AzureAdClientApplicationPrivacyStatementUrl         = var.CARARAA_RGKVASAR_AzureAdClientApplicationPrivacyStatementUrl
  CARARAA_AzureAdClientApplicationPublicClient                = var.CARARAA_RGKVASAR_AzureAdClientApplicationPublicClient
  CARARAA_AzureAdClientApplicationSignInAudience              = var.CARARAA_RGKVASAR_AzureAdClientApplicationSignInAudience
  CARARAA_AzureAdClientApplicationSinglePageApplication       = var.CARARAA_RGKVASAR_AzureAdClientApplicationSinglePageApplication
  CARARAA_AzureAdClientApplicationSupportUrl                  = var.CARARAA_RGKVASAR_AzureAdClientApplicationSupportUrl
  CARARAA_AzureAdClientApplicationTags                        = var.CARARAA_RGKVASAR_AzureAdClientApplicationTags
  CARARAA_AzureAdClientApplicationTemplateId                  = var.CARARAA_RGKVASAR_AzureAdClientApplicationTemplateId
  CARARAA_AzureAdClientApplicationTermsOfServiceUrl           = var.CARARAA_RGKVASAR_AzureAdClientApplicationTermsOfServiceUrl
  CARARAA_AzureAdClientApplicationWeb                         = var.CARARAA_RGKVASAR_AzureAdClientApplicationWeb

  #--
  CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDescription = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeAdminConsentDescription
  CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName
  CARARAA_AzureAdResourceApplicationPermissionScopeType                    = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeType
  CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDescription  = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeUserConsentDescription
  CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName  = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName
  CARARAA_AzureAdResourceApplicationPermissionScopeValue                   = var.CARARAA_RGKVASAR_AzureAdResourceApplicationPermissionScopeValue

  #--
  CARARAA_AdditionalAzureAdResourceApplicationPreAuthorizedPermissionIds = var.CARARAA_RGKVASAR_AdditionalAzureAdResourceApplicationPreAuthorizedPermissionIds

  #--
  CARARAA_AzureAdClientApplicationPasswordEndDate          = var.CARARAA_RGKVASAR_AzureAdClientApplicationPasswordEndDate
  CARARAA_AzureAdClientApplicationPasswordRoateWhenChanged = var.CARARAA_RGKVASAR_AzureAdClientApplicationPasswordRoateWhenChanged
  CARARAA_AzureAdClientApplicationPasswordStartDate        = var.CARARAA_RGKVASAR_AzureAdClientApplicationPasswordStartDate

  #--
  CARARAA_AzureAdClientApplicationApiAccessApiAccessRoleIds            = var.CARARAA_RGKVASAR_AzureAdClientApplicationApiAccessApiAccessRoleIds
  CARARAA_AdditionalAzureAdClientApplicationApiAccessApiAccessScopeIds = var.CARARAA_RGKVASAR_AdditionalAzureAdClientApplicationApiAccessApiAccessScopeIds
}

module "RGKVASAR" {
  source = "../_RGKVASAR_resourceGroupKeyVaultAndSecretAzureRm"

  azurermSubscriptionId           = var.azurermSubscriptionId
  azurermRegion                   = var.azurermRegion
  resourceName                    = var.resourceName
  RGKVASAR_ResourceGroupManagedBy = var.CARARAA_RGKVASAR_ResourceGroupManagedBy
  projectName                     = var.projectName
  creator                         = var.creator
  deployedDate                    = var.deployedDate
  additionalTags                  = var.additionalTags

  #--
  azurermKeyVaultPurgeSoftDeleteOnDestroy       = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults    = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  RGKVASAR_KeyVaultSkuName                      = var.CARARAA_RGKVASAR_KeyVaultSkuName
  RGKVASAR_KeyVaultTenantId                     = var.azureRmTenantId
  RGKVASAR_KeyVaultAccessPolicy                 = var.CARARAA_RGKVASAR_KeyVaultAccessPolicy
  RGKVASAR_KeyVaultEnabledForDeployment         = var.CARARAA_RGKVASAR_KeyVaultEnabledForDeployment
  RGKVASAR_KeyVaultEnabledForDiskEncryption     = var.CARARAA_RGKVASAR_KeyVaultEnabledForDiskEncryption
  RGKVASAR_KeyVaultEnabledForTemplateDeployment = var.CARARAA_RGKVASAR_KeyVaultEnabledForTemplateDeployment
  RGKVASAR_KeyVaultEnableRbacAuthorization      = var.CARARAA_RGKVASAR_KeyVaultEnableRbacAuthorization
  RGKVASAR_KeyVaultNetworkAcls                  = var.CARARAA_RGKVASAR_KeyVaultNetworkAcls
  RGKVASAR_KeyVaultPurgeProtectionEnabled       = var.CARARAA_RGKVASAR_KeyVaultPurgeProtectionEnabled
  RGKVASAR_KeyVaultPublicNetworkAccessEnabled   = var.CARARAA_RGKVASAR_KeyVaultPublicNetworkAccessEnabled
  RGKVASAR_KeyVaultSoftDeleteRetentionDays      = var.CARARAA_RGKVASAR_KeyVaultSoftDeleteRetentionDays
  RGKVASAR_KeyVaultContact                      = var.CARARAA_RGKVASAR_KeyVaultContact

  #--
  RGKVASAR_KeyVaultSecretValue           = var.CARARAA_RGKVASAR_KeyVaultSecretValue
  RGKVASAR_KeyVaultSecretContentType     = var.CARARAA_RGKVASAR_KeyVaultSecretContentType
  RGKVASAR_KeyVaultSecretNotBeforeDate   = var.CARARAA_RGKVASAR_KeyVaultSecretNotBeforeDate
  RGKVASAR_KeyVaultSecretExperiationDate = var.CARARAA_RGKVASAR_KeyVaultSecretExperiationDate
}

module "resourceApplicationIdUriKeyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = "resource-application-id-uri"
  keyVaultSecretValue                        = tolist(module.CARARAA.CARARAA_AzureAdResourceApplicationIdUris)[0]
  keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
  keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretExperiationDate
}

module "resourceApplicationObjectIdKeyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = "resource-application-object-id"
  keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdResourceApplicationObjectId
  keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
  keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretExperiationDate
}

module "resourceApplicationClientIdKeyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = "resource-application-application-id"
  keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdResourceApplicationClientId
  keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
  keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretExperiationDate
}

module "clientApplicationObjectIdKeyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = "client-application-object-id"
  keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationObjectId
  keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
  keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretExperiationDate
}

module "clientApplicationClientIdKeyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = "client-application-client-id"
  keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationClientId
  keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
  keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretExperiationDate
}

module "clientApplicationPasswordKeyIdKeyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = "client-application-password-key-id"
  keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordKeyId
  keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
  keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretExperiationDate
}

module "clientApplicationPasswordValueKeyVaultSecret" {
  source = "../../azurerm/keyVault/genericKeyVaultSecret"

  azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  azurermSubscriptionId                      = var.azurermSubscriptionId
  resourceName                               = "client-application-password-value"
  keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordValue
  keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
  keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretContentType
  projectName                                = var.projectName
  creator                                    = var.creator
  deployedDate                               = var.deployedDate
  additionalTags                             = var.additionalTags
  keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretNotBeforeDate
  keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretExperiationDate
}