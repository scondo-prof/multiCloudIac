
module "password" {
  source                  = "../../random/genericRandomPassword"
  passwordLength          = var.PKS_PasswordLength
  passwordKeepers         = var.PKS_PasswordKeepers
  passwordLower           = var.PKS_PasswordLower
  passwordMinLower        = var.PKS_PasswordMinLower
  passwordMinNumeric      = var.PKS_PasswordMinNumeric
  passwordMinSpecial      = var.PKS_PasswordMinSpecial
  passwordMinUpper        = var.PKS_PasswordMinUpper
  passwordNumeric         = var.PKS_PasswordNumeric
  passwordOverrideSpecial = var.PKS_PasswordOverrideSpecial
  passwordSpecial         = var.PKS_PasswordSpecial
  passwordUpper           = var.PKS_PasswordUpper
}

#---

module "privateKey" {
  source               = "../../tls/genericTlsPrivateKey"
  tlsProxy             = var.tlsProxy
  privateKeyAlgorithm  = var.PKS_PrivateKeyAlgorithm
  privateKeyEcdsaCurve = var.PKS_PrivateKeyEcdsaCurve
  privateKeyRsaBits    = var.PKS_PrivateKeyRsaBits
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.PKS_SWV_SecretDescription
  SWV_SecretKmsKeyId             = var.PKS_SWV_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.PKS_SWV_SecretNamePrefix
  resourceName                   = var.resourceName
  SWV_SecretPolicy               = var.PKS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.PKS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.PKS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.PKS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString  = var.PKS_SWV_SecretVersionSecretString
  SWV_SecretVersionSecretBinary  = var.PKS_SWV_SecretVersionSecretBinary
  SWV_SecretVersionStages        = var.PKS_SWV_SecretVersionStages
}

#---
