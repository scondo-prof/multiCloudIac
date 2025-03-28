
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
  RGKVASAR_KeyVaultSecretValue                  = var.CR_RGKVASAR_KeyVaultSecretValue
  RGKVASAR_KeyVaultSecretContentType            = var.CR_RGKVASAR_KeyVaultSecretContentType
  RGKVASAR_KeyVaultSecretNotBeforeDate          = var.CR_RGKVASAR_KeyVaultSecretNotBeforeDate
  RGKVASAR_KeyVaultSecretExperiationDate        = var.CR_RGKVASAR_KeyVaultSecretExperiationDate
}

#---

# module "RGKVASAR" {
#   source = "../_RGKVASAR_resourceGroupKeyVaultAndSecretAzureRm"

#   azurermSubscriptionId           = var.azurermSubscriptionId
#   azurermRegion                   = var.azurermRegion
#   resourceName                    = var.resourceName
#   RGKVASAR_ResourceGroupManagedBy = var.CARARAA_RGKVASAR_ResourceGroupManagedBy
#   projectName                     = var.projectName
#   creator                         = var.creator
#   deployedDate                    = var.deployedDate
#   additionalTags                  = var.additionalTags

#   #--
#   azurermKeyVaultPurgeSoftDeleteOnDestroy       = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults    = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   RGKVASAR_KeyVaultSkuName                      = var.CARARAA_RGKVASAR_KeyVaultSkuName
#   RGKVASAR_KeyVaultTenantId                     = var.azureRmTenantId
#   RGKVASAR_KeyVaultAccessPolicy                 = var.CARARAA_RGKVASAR_KeyVaultAccessPolicy
#   RGKVASAR_KeyVaultEnabledForDeployment         = var.CARARAA_RGKVASAR_KeyVaultEnabledForDeployment
#   RGKVASAR_KeyVaultEnabledForDiskEncryption     = var.CARARAA_RGKVASAR_KeyVaultEnabledForDiskEncryption
#   RGKVASAR_KeyVaultEnabledForTemplateDeployment = var.CARARAA_RGKVASAR_KeyVaultEnabledForTemplateDeployment
#   RGKVASAR_KeyVaultEnableRbacAuthorization      = var.CARARAA_RGKVASAR_KeyVaultEnableRbacAuthorization
#   RGKVASAR_KeyVaultNetworkAcls                  = var.CARARAA_RGKVASAR_KeyVaultNetworkAcls
#   RGKVASAR_KeyVaultPurgeProtectionEnabled       = var.CARARAA_RGKVASAR_KeyVaultPurgeProtectionEnabled
#   RGKVASAR_KeyVaultPublicNetworkAccessEnabled   = var.CARARAA_RGKVASAR_KeyVaultPublicNetworkAccessEnabled
#   RGKVASAR_KeyVaultSoftDeleteRetentionDays      = var.CARARAA_RGKVASAR_KeyVaultSoftDeleteRetentionDays
#   RGKVASAR_KeyVaultContact                      = var.CARARAA_RGKVASAR_KeyVaultContact

#   #--
#   RGKVASAR_KeyVaultSecretValue           = var.CARARAA_RGKVASAR_KeyVaultSecretValue
#   RGKVASAR_KeyVaultSecretContentType     = var.CARARAA_RGKVASAR_KeyVaultSecretContentType
#   RGKVASAR_KeyVaultSecretNotBeforeDate   = var.CARARAA_RGKVASAR_KeyVaultSecretNotBeforeDate
#   RGKVASAR_KeyVaultSecretExperiationDate = var.CARARAA_RGKVASAR_KeyVaultSecretExperiationDate
# }

# module "resourceApplicationIdUriKeyVaultSecret" {
#   source = "../../azurerm/keyVault/genericKeyVaultSecret"

#   azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   azurermSubscriptionId                      = var.azurermSubscriptionId
#   resourceName                               = "resource-application-id-uri"
#   keyVaultSecretValue                        = tolist(module.CARARAA.CARARAA_AzureAdResourceApplicationIdUris)[0]
#   keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
#   keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretContentType
#   projectName                                = var.projectName
#   creator                                    = var.creator
#   deployedDate                               = var.deployedDate
#   additionalTags                             = var.additionalTags
#   keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretNotBeforeDate
#   keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ResourceApplicationIdUriKeyVaultSecretExperiationDate
# }

# module "resourceApplicationObjectIdKeyVaultSecret" {
#   source = "../../azurerm/keyVault/genericKeyVaultSecret"

#   azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   azurermSubscriptionId                      = var.azurermSubscriptionId
#   resourceName                               = "resource-application-object-id"
#   keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdResourceApplicationObjectId
#   keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
#   keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretContentType
#   projectName                                = var.projectName
#   creator                                    = var.creator
#   deployedDate                               = var.deployedDate
#   additionalTags                             = var.additionalTags
#   keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretNotBeforeDate
#   keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ResourceApplicationObjectIdKeyVaultSecretExperiationDate
# }

# module "resourceApplicationClientIdKeyVaultSecret" {
#   source = "../../azurerm/keyVault/genericKeyVaultSecret"

#   azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   azurermSubscriptionId                      = var.azurermSubscriptionId
#   resourceName                               = "resource-application-application-id"
#   keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdResourceApplicationClientId
#   keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
#   keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretContentType
#   projectName                                = var.projectName
#   creator                                    = var.creator
#   deployedDate                               = var.deployedDate
#   additionalTags                             = var.additionalTags
#   keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretNotBeforeDate
#   keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ResourceApplicationClientIdKeyVaultSecretExperiationDate
# }

# module "clientApplicationObjectIdKeyVaultSecret" {
#   source = "../../azurerm/keyVault/genericKeyVaultSecret"

#   azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   azurermSubscriptionId                      = var.azurermSubscriptionId
#   resourceName                               = "client-application-object-id"
#   keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationObjectId
#   keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
#   keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretContentType
#   projectName                                = var.projectName
#   creator                                    = var.creator
#   deployedDate                               = var.deployedDate
#   additionalTags                             = var.additionalTags
#   keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretNotBeforeDate
#   keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationObjectIdKeyVaultSecretExperiationDate
# }

# module "clientApplicationClientIdKeyVaultSecret" {
#   source = "../../azurerm/keyVault/genericKeyVaultSecret"

#   azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   azurermSubscriptionId                      = var.azurermSubscriptionId
#   resourceName                               = "client-application-client-id"
#   keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationClientId
#   keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
#   keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretContentType
#   projectName                                = var.projectName
#   creator                                    = var.creator
#   deployedDate                               = var.deployedDate
#   additionalTags                             = var.additionalTags
#   keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretNotBeforeDate
#   keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationClientIdKeyVaultSecretExperiationDate
# }

# module "clientApplicationPasswordKeyIdKeyVaultSecret" {
#   source = "../../azurerm/keyVault/genericKeyVaultSecret"

#   azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   azurermSubscriptionId                      = var.azurermSubscriptionId
#   resourceName                               = "client-application-password-key-id"
#   keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordKeyId
#   keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
#   keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretContentType
#   projectName                                = var.projectName
#   creator                                    = var.creator
#   deployedDate                               = var.deployedDate
#   additionalTags                             = var.additionalTags
#   keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretNotBeforeDate
#   keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationPasswordKeyIdKeyVaultSecretExperiationDate
# }

# module "clientApplicationPasswordValueKeyVaultSecret" {
#   source = "../../azurerm/keyVault/genericKeyVaultSecret"

#   azurermKeyVaultPurgeSoftDeleteOnDestroy    = var.azurermKeyVaultPurgeSoftDeleteOnDestroy
#   azurermKeyVaultRecoverSoftDeletedKeyVaults = var.azurermKeyVaultRecoverSoftDeletedKeyVaults
#   azurermSubscriptionId                      = var.azurermSubscriptionId
#   resourceName                               = "client-application-password-value"
#   keyVaultSecretValue                        = module.CARARAA.CARARAA_AzureAdClientApplicationPasswordValue
#   keyVaultSecretVaultId                      = module.RGKVASAR.RGKVASAR_KeyVaultId
#   keyVaultSecretContentType                  = var.CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretContentType
#   projectName                                = var.projectName
#   creator                                    = var.creator
#   deployedDate                               = var.deployedDate
#   additionalTags                             = var.additionalTags
#   keyVaultSecretNotBeforeDate                = var.CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretNotBeforeDate
#   keyVaultSecretExperiationDate              = var.CARARAA_RGKVASAR_ClientApplicationPasswordValueKeyVaultSecretExperiationDate
# }