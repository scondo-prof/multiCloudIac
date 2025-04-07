
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



# module "password" {
#   source                  = "../../random/genericRandomPassword"
#   passwordLength          = var.PKS_PasswordLength
#   passwordKeepers         = var.PKS_PasswordKeepers
#   passwordLower           = var.PKS_PasswordLower
#   passwordMinLower        = var.PKS_PasswordMinLower
#   passwordMinNumeric      = var.PKS_PasswordMinNumeric
#   passwordMinSpecial      = var.PKS_PasswordMinSpecial
#   passwordMinUpper        = var.PKS_PasswordMinUpper
#   passwordNumeric         = var.PKS_PasswordNumeric
#   passwordOverrideSpecial = var.PKS_PasswordOverrideSpecial
#   passwordSpecial         = var.PKS_PasswordSpecial
#   passwordUpper           = var.PKS_PasswordUpper
# }

# module "privateKey" {
#   source               = "../../tls/genericTlsPrivateKey"
#   tlsProxy             = var.tlsProxy
#   privateKeyAlgorithm  = var.PKS_PrivateKeyAlgorithm
#   privateKeyEcdsaCurve = var.PKS_PrivateKeyEcdsaCurve
#   privateKeyRsaBits    = var.PKS_PrivateKeyRsaBits
# }

# #---

# module "SWV" {
#   source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
#   awsRegion                      = var.awsRegion
#   SWV_SecretKmsKeyId             = var.PKS_SWV_SecretKmsKeyId
#   resourceName                   = var.resourceName
#   SWV_SecretPolicy               = var.PKS_SWV_SecretPolicy
#   SWV_SecretRecoveryWindowInDays = var.PKS_SWV_SecretRecoveryWindowInDays
#   SWV_SecretReplica              = var.PKS_SWV_SecretReplica
#   SWV_SecretForceSecretOverwrite = var.PKS_SWV_SecretForceSecretOverwrite
#   projectName                    = var.projectName
#   creator                        = var.creator
#   deployedDate                   = var.deployedDate
#   additionalTags                 = var.additionalTags
#   SWV_SecretVersionSecretString = merge({
#     private_key_open_ssh                      = module.privateKey.privateKeyOpenSsh
#     private_key_pem                           = module.privateKey.privateKeyPrivateKeyPem
#     private_key_pem_pkcs8                     = module.privateKey.privateKeyPemPkcs8
#     private_key_public_key_fingerprint_md5    = module.privateKey.privateKeyPublicKeyFingerprintMd5
#     private_key_public_key_fingerprint_sha256 = module.privateKey.privateKeyPublicKeyFingerprintSha256
#     private_key_public_key_open_ssh           = module.privateKey.privateKeyPublicKeyOpenSsh
#     private_key_p8                            = var.PKS_privateKeyP8FilePath != null ? file(var.PKS_privateKeyP8FilePath) : ""
#     private_key_p8_passphrase                 = module.password.passwordResult
#     public_key_pem                            = module.privateKey.privateKeyPublicKeyPem
#   }, var.PKS_SWV_SecretVersionSecretString)
#   SWV_SecretVersionSecretBinary = var.PKS_SWV_SecretVersionSecretBinary
#   SWV_SecretVersionStages       = var.PKS_SWV_SecretVersionStages
# }

# #---
