
module "ghOrgSecret" {
  source                      = "../../github/org/genericOrgSecret"
  githubToken                 = var.githubToken
  githubBaseUrl               = var.githubBaseUrl
  githubOwner                 = var.githubOwner
  githubAppAuth               = var.githubAppAuth
  githubWriteDelayMs          = var.githubWriteDelayMs
  githubRetryDelayMs          = var.githubRetryDelayMs
  githubReadDelayMs           = var.githubReadDelayMs
  githubRetryableErrors       = var.githubRetryableErrors
  githubMaxRetries            = var.githubMaxRetries
  secretObject                = var.GOSAS_GhOrgSecretObject
  secretVisibility            = var.GOSAS_GhOrgSecretVisibility
  secretSelectedRepositoryIds = var.GOSAS_GhOrgSecretSelectedRepositoryIds
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.GOSAS_SWV_SecretDescription
  SWV_SecretKmsKeyId             = var.GOSAS_SWV_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.GOSAS_SWV_SecretNamePrefix
  resourceName                   = var.resourceName
  SWV_SecretPolicy               = var.GOSAS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.GOSAS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.GOSAS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.GOSAS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString  = var.GOSAS_SWV_SecretVersionSecretString
  SWV_SecretVersionSecretBinary  = var.GOSAS_SWV_SecretVersionSecretBinary
  SWV_SecretVersionStages        = var.GOSAS_SWV_SecretVersionStages
}

#---



#---


# module "ghOrgSecret" {
#   source               = "../../github/org/genericOrgSecret"
#   githubOrganization   = var.githubOrganization
#   githubToken          = var.githubToken
#   resourceName         = var.resourceName
#   secretVisibility     = var.GOSAS_GhOrgSecretVisibility
#   secretPlaintextValue = var.GOSAS_GhOrgSecretPlaintextValue
#   secretRepositoryIds  = var.GOSAS_GhOrgSecretRepositoryIds
# }

# module "awsSecret" {
#   source = "../../aws/secretsmanager/secretWithVersion"

#   awsRegion                  = var.awsRegion
#   secretKmsKeyId            = var.GOSAS_AwsSecretKmsKeyId
#   resourceName               = "${var.resourceName}-github-org"
#   secretPolicy               = var.GOSAS_AwsSecretPolicy
#   secretRecoveryWindowInDays = var.GOSAS_AwsSecretRecoveryWindowInDays
#   secretReplica              = var.GOSAS_AwsSecretReplica
#   secretForceSecretOverwrite = var.GOSAS_AwsSecretForceSecretOverwrite
#   projectName                = var.projectName
#   creator                    = var.creator
#   deployedDate               = var.deployedDate
#   additionalTags       = var.additionalTags
#   secretVersionSecretString = merge({
#     (module.ghOrgSecret.secretName) : (module.ghOrgSecret.secretPlainTextValue)
#     "Organization" : (var.githubOrganization)
#   }, var.GOSAS_AwsSecretVersionAdditionalSecretString)
#   secretVersionSecretBinary = var.GOSAS_AwsSecretVersionSecretBinary
#   secretVersionStages       = var.GOSAS_AwsSecretVersionStages


# }