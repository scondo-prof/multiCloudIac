
module "githubActionsSecret" {
  source                = "../../github/repo/genericActionsSecret"
  githubToken           = var.githubToken
  githubBaseUrl         = var.githubBaseUrl
  githubOwner           = var.githubOwner
  githubAppAuth         = var.githubAppAuth
  githubWriteDelayMs    = var.githubWriteDelayMs
  githubRetryDelayMs    = var.githubRetryDelayMs
  githubReadDelayMs     = var.githubReadDelayMs
  githubRetryableErrors = var.githubRetryableErrors
  githubMaxRetries      = var.githubMaxRetries
  secretObjects         = var.GRSS_GithubActionsSecretObjects
  secretRepository      = var.GRSS_GithubActionsSecretRepository
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.GRSS_SWV_SecretDescription
  SWV_SecretKmsKeyId             = var.GRSS_SWV_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.GRSS_SWV_SecretNamePrefix
  resourceName                   = "${var.resourceName}-${var.GRSS_GithubActionsSecretRepository}"
  SWV_SecretPolicy               = var.GRSS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.GRSS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.GRSS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.GRSS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString  = merge({
    for idx in range(length(module.githubActionsSecret.secretName)) :
    module.githubActionsSecret.secretName[idx] => module.ghOrgSecret.secretPlaintextValue[idx]
    }, var.GRSS_SWV_SecretVersionSecretString)
  SWV_SecretVersionSecretBinary  = var.GRSS_SWV_SecretVersionSecretBinary
  SWV_SecretVersionStages        = var.GRSS_SWV_SecretVersionStages
}

#---
