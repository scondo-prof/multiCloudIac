
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
  secretObjects         = var.GRSPBS_GithubActionsSecretObjects
  secretRepository      = var.GRSPBS_GithubActionsSecretRepository
}

#---

module "prefectBlock" {
  source             = "../../prefect/blocks/genericBlock"
  prefectAccountId   = var.prefectAccountId
  prefectWorkspaceId = var.prefectWorkspaceId
  prefectApiKey      = var.prefectApiKey
  blockObjects       = var.GRSPBS_PrefectBlockObjects
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.GRSPBS_SWV_SecretDescription
  SWV_SecretKmsKeyId             = var.GRSPBS_SWV_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.GRSPBS_SWV_SecretNamePrefix
  resourceName                   = "${var.resourceName}-${var.GRSPBS_GithubActionsSecretRepository}"
  SWV_SecretPolicy               = var.GRSPBS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.GRSPBS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.GRSPBS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.GRSPBS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString  = merge(
    {
    for idx in range(length(module.githubActionsSecret.secretName)) :
    module.githubActionsSecret.secretName[idx] => module.githubActionsSecret.secretPlaintextValue[idx]
  },
  {
    for idx in range(length(module.prefectBlock.blockName)) :
    module.prefectBlock.blockName[idx] => module.prefectBlock.blockData[idx]
  }, var.GRSPBS_SWV_SecretVersionSecretString)
  SWV_SecretVersionSecretBinary  = var.GRSPBS_SWV_SecretVersionSecretBinary
  SWV_SecretVersionStages        = var.GRSPBS_SWV_SecretVersionStages
}

#---
