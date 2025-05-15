
module "prefectBlock" {
  source             = "../../prefect/blocks/genericBlock"
  prefectAccountId   = var.prefectAccountId
  prefectWorkspaceId = var.prefectWorkspaceId
  prefectApiKey      = var.prefectApiKey
  blockObjects       = var.PBS_PrefectBlockObjects
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.PBS_SWV_SecretDescription
  SWV_SecretKmsKeyId             = var.PBS_SWV_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.PBS_SWV_SecretNamePrefix
  resourceName                   = var.resourceName
  SWV_SecretPolicy               = var.PBS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.PBS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.PBS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.PBS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString  = var.PBS_SWV_SecretVersionSecretString
  SWV_SecretVersionSecretBinary  = var.PBS_SWV_SecretVersionSecretBinary
  SWV_SecretVersionStages        = var.PBS_SWV_SecretVersionStages
}

#---
