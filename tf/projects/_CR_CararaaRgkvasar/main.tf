
module "CARARAA" {
  source                                                                   = "../_CARARAA_clientAndResourceAppRegistrationAzureAd"
  azureAdTenantId                                                          = var.azureAdTenantId
  CARARAA_AzureAdResourceApplicationDeviceOnlyAuthEnabled                  = var.CR_CARARAA_AzureAdResourceApplicationDeviceOnlyAuthEnabled
  resourceName                                                             = var.resourceName
  CARARAA_AzureAdResourceApplicationFallbackPublicClientEnabled            = var.CR_CARARAA_AzureAdResourceApplicationFallbackPublicClientEnabled
  CARARAA_AzureAdResourceApplicationFeaturetags                            = var.CR_CARARAA_AzureAdResourceApplicationFeaturetags
  CARARAA_AzureAdResourceApplicationGroupMembershipClaims                  = var.CR_CARARAA_AzureAdResourceApplicationGroupMembershipClaims
  CARARAA_AzureAdResourceApplicationIdentifierUris                         = var.CR_CARARAA_AzureAdResourceApplicationIdentifierUris
  CARARAA_AzureAdResourceApplicationLogoImage                              = var.CR_CARARAA_AzureAdResourceApplicationLogoImage
  CARARAA_AzureAdResourceApplicationMarketingUrl                           = var.CR_CARARAA_AzureAdResourceApplicationMarketingUrl
  CARARAA_AzureAdResourceApplicationOauth2PostResponseRequried             = var.CR_CARARAA_AzureAdResourceApplicationOauth2PostResponseRequried
  CARARAA_AzureAdResourceApplicationOwners                                 = var.CR_CARARAA_AzureAdResourceApplicationOwners
  CARARAA_AzureAdResourceApplicationPreventDuplicateNames                  = var.CR_CARARAA_AzureAdResourceApplicationPreventDuplicateNames
  CARARAA_AzureAdResourceApplicationPrivacyStatementUrl                    = var.CR_CARARAA_AzureAdResourceApplicationPrivacyStatementUrl
  CARARAA_AzureAdResourceApplicationPublicClient                           = var.CR_CARARAA_AzureAdResourceApplicationPublicClient
  CARARAA_AzureAdResourceApplicationSignInAudience                         = var.CR_CARARAA_AzureAdResourceApplicationSignInAudience
  CARARAA_AzureAdResourceApplicationSinglePageApplication                  = var.CR_CARARAA_AzureAdResourceApplicationSinglePageApplication
  CARARAA_AzureAdResourceApplicationSupportUrl                             = var.CR_CARARAA_AzureAdResourceApplicationSupportUrl
  CARARAA_AzureAdResourceApplicationTags                                   = var.CR_CARARAA_AzureAdResourceApplicationTags
  CARARAA_AzureAdResourceApplicationTemplateId                             = var.CR_CARARAA_AzureAdResourceApplicationTemplateId
  CARARAA_AzureAdResourceApplicationTermsOfServiceUrl                      = var.CR_CARARAA_AzureAdResourceApplicationTermsOfServiceUrl
  CARARAA_AzureAdResourceApplicationWeb                                    = var.CR_CARARAA_AzureAdResourceApplicationWeb
  CARARAA_AzureAdClientApplicationDeviceOnlyAuthEnabled                    = var.CR_CARARAA_AzureAdClientApplicationDeviceOnlyAuthEnabled
  CARARAA_AzureAdClientApplicationFallbackPublicClientEnabled              = var.CR_CARARAA_AzureAdClientApplicationFallbackPublicClientEnabled
  CARARAA_AzureAdClientApplicationFeaturetags                              = var.CR_CARARAA_AzureAdClientApplicationFeaturetags
  CARARAA_AzureAdClientApplicationGroupMembershipClaims                    = var.CR_CARARAA_AzureAdClientApplicationGroupMembershipClaims
  CARARAA_AzureAdClientApplicationIdentifierUris                           = var.CR_CARARAA_AzureAdClientApplicationIdentifierUris
  CARARAA_AzureAdClientApplicationLogoImage                                = var.CR_CARARAA_AzureAdClientApplicationLogoImage
  CARARAA_AzureAdClientApplicationMarketingUrl                             = var.CR_CARARAA_AzureAdClientApplicationMarketingUrl
  CARARAA_AzureAdClientApplicationOauth2PostResponseRequried               = var.CR_CARARAA_AzureAdClientApplicationOauth2PostResponseRequried
  CARARAA_AzureAdClientApplicationOwners                                   = var.CR_CARARAA_AzureAdClientApplicationOwners
  CARARAA_AzureAdClientApplicationPreventDuplicateNames                    = var.CR_CARARAA_AzureAdClientApplicationPreventDuplicateNames
  CARARAA_AzureAdClientApplicationPrivacyStatementUrl                      = var.CR_CARARAA_AzureAdClientApplicationPrivacyStatementUrl
  CARARAA_AzureAdClientApplicationPublicClient                             = var.CR_CARARAA_AzureAdClientApplicationPublicClient
  CARARAA_AzureAdClientApplicationSignInAudience                           = var.CR_CARARAA_AzureAdClientApplicationSignInAudience
  CARARAA_AzureAdClientApplicationSinglePageApplication                    = var.CR_CARARAA_AzureAdClientApplicationSinglePageApplication
  CARARAA_AzureAdClientApplicationSupportUrl                               = var.CR_CARARAA_AzureAdClientApplicationSupportUrl
  CARARAA_AzureAdClientApplicationTags                                     = var.CR_CARARAA_AzureAdClientApplicationTags
  CARARAA_AzureAdClientApplicationTemplateId                               = var.CR_CARARAA_AzureAdClientApplicationTemplateId
  CARARAA_AzureAdClientApplicationTermsOfServiceUrl                        = var.CR_CARARAA_AzureAdClientApplicationTermsOfServiceUrl
  CARARAA_AzureAdClientApplicationWeb                                      = var.CR_CARARAA_AzureAdClientApplicationWeb
  CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDescription = var.CR_CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDescription
  CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName = var.CR_CARARAA_AzureAdResourceApplicationPermissionScopeAdminConsentDisplayName
  CARARAA_AzureAdResourceApplicationPermissionScopeType                    = var.CR_CARARAA_AzureAdResourceApplicationPermissionScopeType
  CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDescription  = var.CR_CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDescription
  CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName  = var.CR_CARARAA_AzureAdResourceApplicationPermissionScopeUserConsentDisplayName
  CARARAA_AzureAdResourceApplicationPermissionScopeValue                   = var.CR_CARARAA_AzureAdResourceApplicationPermissionScopeValue
  CARARAA_AzureAdResourceApplicationPreAuthorizedPermissionIds             = var.CR_CARARAA_AzureAdResourceApplicationPreAuthorizedPermissionIds
  CARARAA_AzureAdClientApplicationPasswordEndDate                          = var.CR_CARARAA_AzureAdClientApplicationPasswordEndDate
  CARARAA_AzureAdClientApplicationPasswordRoateWhenChanged                 = var.CR_CARARAA_AzureAdClientApplicationPasswordRoateWhenChanged
  CARARAA_AzureAdClientApplicationPasswordStartDate                        = var.CR_CARARAA_AzureAdClientApplicationPasswordStartDate
  CARARAA_AzureAdClientApplicationApiAccessRoleIds                         = var.CR_CARARAA_AzureAdClientApplicationApiAccessRoleIds
  CARARAA_AzureAdClientApplicationApiAccessScopeIds                        = var.CR_CARARAA_AzureAdClientApplicationApiAccessScopeIds
}

#---

module "RGKVASAR" {
  source                                        = "../_RGKVASAR_resourceGroupKeyVaultAndSecretAzureRm"
  azurermSubscriptionId                         = var.azurermSubscriptionId
  azurermRegion                                 = var.azurermRegion
  resourceName                                  = var.resourceName
  RGKVASAR_ResourceGroupManagedBy               = var.CR_RGKVASAR_ResourceGroupManagedBy
  projectName                                   = var.projectName
  createdBy                                     = var.createdBy
  tfModule                                      = var.tfModule
  deployedDate                                  = var.deployedDate
  additionalTags                                = var.additionalTags
  azurermKeyVaultPurgeSoftDeleteOnDestroy       = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
  azurermKeyVaultRecoverSoftDeletedKeyVaults    = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
  RGKVASAR_KeyVaultSkuName                      = var.CR_RGKVASAR_KeyVaultSkuName
  RGKVASAR_KeyVaultTenantId                     = var.CR_RGKVASAR_KeyVaultTenantId
  RGKVASAR_KeyVaultAccessPolicy                 = var.CR_RGKVASAR_KeyVaultAccessPolicy
  RGKVASAR_KeyVaultEnabledForDeployment         = var.CR_RGKVASAR_KeyVaultEnabledForDeployment
  RGKVASAR_KeyVaultEnabledForDiskEncryption     = var.CR_RGKVASAR_KeyVaultEnabledForDiskEncryption
  RGKVASAR_KeyVaultEnabledForTemplateDeployment = var.CR_RGKVASAR_KeyVaultEnabledForTemplateDeployment
  RGKVASAR_KeyVaultEnableRbacAuthorization      = var.CR_RGKVASAR_KeyVaultEnableRbacAuthorization
  RGKVASAR_KeyVaultNetworkAcls                  = var.CR_RGKVASAR_KeyVaultNetworkAcls
  RGKVASAR_KeyVaultPurgeProtectionEnabled       = var.CR_RGKVASAR_KeyVaultPurgeProtectionEnabled
  RGKVASAR_KeyVaultPublicNetworkAccessEnabled   = var.CR_RGKVASAR_KeyVaultPublicNetworkAccessEnabled
  RGKVASAR_KeyVaultSoftDeleteRetentionDays      = var.CR_RGKVASAR_KeyVaultSoftDeleteRetentionDays
  RGKVASAR_KeyVaultContact                      = var.CR_RGKVASAR_KeyVaultContact
  RGKVASAR_KeyVaultSecretObjects = concat([
    {
      name  = "resource-application-id-uri"
      value = tolist(module.CARARAA.CARARAA_AzureAdClientApplicationIdUris[0])
    },
    {
      name  = "resource-application-object-id"
      value = module.CARARAA.CARARAA_AzureAdResourceApplicationObjectId
    },
    {
      name  = "resource-application-application-id"
      value = module.CARARAA.CARARAA_AzureAdResourceApplicationClientId
    },
    {
      name  = "client-application-object-id"
      value = module.CARARAA.CARARAA_AzureAdClientApplicationObjectId
    },
    {
      name  = "client-application-client-id"
      value = module.CARARAA.CARARAA_AzureAdClientApplicationClientId
    },
    {
      name  = "client-application-password-key-id"
      value = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordKeyId
    },
    {
      name  = "client-application-password-value"
      value = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordValue
    },
  ], var.CR_RGKVASAR_KeyVaultSecretObjects)
}