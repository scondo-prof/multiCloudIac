
module "keyPair" {
  source           = "../../aws/ec2/genericKeyPair"
  awsRegion        = var.awsRegion
  keyPairName      = "${var.resourceName}-key-pair"
  keyPairPublicKey = module.privateKey.privateKeyPublicKeyOpenSsh
  projectName      = var.projectName
  creator          = var.creator
  deployedDate     = var.deployedDate
  additionalTags   = var.additionalTags
}

#---

module "privateKey" {
  source               = "../../tls/genericTlsPrivateKey"
  tlsProxy             = var.tlsProxy
  privateKeyAlgorithm  = var.KPTPKWS_PrivateKeyAlgorithm
  privateKeyEcdsaCurve = var.KPTPKWS_PrivateKeyEcdsaCurve
  privateKeyRsaBits    = var.KPTPKWS_PrivateKeyRsaBits
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretKmsKeyId             = var.KPTPKWS_SWV_SecretKmsKeyId
  resourceName                   = var.resourceName
  SWV_SecretPolicy               = var.KPTPKWS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.KPTPKWS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.KPTPKWS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.KPTPKWS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  creator                        = var.creator
  deployedDate                   = var.deployedDate
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString = merge({
    "private-key-pem" = module.privateKey.privateKeyPrivateKeyPem
  }, var.KPTPKWS_SWV_SecretVersionSecretString)
  SWV_SecretVersionStages = var.KPTPKWS_SWV_SecretVersionStages
}

#---
