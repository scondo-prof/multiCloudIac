
module "secret" {
  source                     = "../genericSecret"
  awsRegion                  = var.awsRegion
  secretDescription          = var.SWV_SecretDescription
  secretKmsKeyId             = var.SWV_SecretKmsKeyId
  secretNamePrefix           = var.SWV_SecretNamePrefix
  resourceName               = var.resourceName
  secretPolicy               = var.SWV_SecretPolicy
  secretRecoveryWindowInDays = var.SWV_SecretRecoveryWindowInDays
  secretReplica              = var.SWV_SecretReplica
  secretForceSecretOverwrite = var.SWV_SecretForceSecretOverwrite
  projectName                = var.projectName
  createdBy                  = var.createdBy
  deployedDate               = var.deployedDate
  tfModule                   = var.tfModule
  additionalTags             = var.additionalTags
}

#---

module "secretVersion" {
  source                    = "../genericSecretVersion"
  awsRegion                 = var.awsRegion
  secretVersionSecretId     = module.secret.secretArn
  secretVersionSecretString = var.SWV_SecretVersionSecretString
  secretVersionSecretBinary = var.SWV_SecretVersionSecretBinary
  secretVersionStages       = var.SWV_SecretVersionStages
}

#---