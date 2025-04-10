
module "Ec2KeyPair" {
  source            = "../../aws/ec2/genericKeyPair"
  awsRegion         = var.awsRegion
  keyPairNamePrefix = "${var.resourceName}-key-pair"
  keyPairPublicKey  = module.ec2PrivateKey.privateKeyPublicKeyOpenSsh
  projectName       = var.projectName
  createdBy         = var.createdBy
  deployedDate      = var.deployedDate
  tfModule          = var.tfModule
  additionalTags    = var.additionalTags
}

#---

module "ec2PrivateKey" {
  source               = "../../tls/genericTlsPrivateKey"
  tlsProxy             = var.tlsProxy
  privateKeyAlgorithm  = var.KPTPKWS_Ec2PrivateKeyAlgorithm
  privateKeyEcdsaCurve = var.KPTPKWS_Ec2PrivateKeyEcdsaCurve
  privateKeyRsaBits    = var.KPTPKWS_Ec2PrivateKeyRsaBits
}

#---

module "SWV" {
  source                         = "../../aws/secretsmanager/_SWV_secretWithVersion"
  awsRegion                      = var.awsRegion
  SWV_SecretDescription          = var.KPTPKWS_SWV_SecretDescription
  SWV_SecretKmsKeyId             = var.KPTPKWS_SWV_SecretKmsKeyId
  SWV_SecretNamePrefix           = var.KPTPKWS_SWV_SecretNamePrefix
  resourceName                   = module.Ec2KeyPair.keyPairKeyName
  SWV_SecretPolicy               = var.KPTPKWS_SWV_SecretPolicy
  SWV_SecretRecoveryWindowInDays = var.KPTPKWS_SWV_SecretRecoveryWindowInDays
  SWV_SecretReplica              = var.KPTPKWS_SWV_SecretReplica
  SWV_SecretForceSecretOverwrite = var.KPTPKWS_SWV_SecretForceSecretOverwrite
  projectName                    = var.projectName
  createdBy                      = var.createdBy
  deployedDate                   = var.deployedDate
  tfModule                       = var.tfModule
  additionalTags                 = var.additionalTags
  SWV_SecretVersionSecretString = merge({
    private_key_pem_pkcs8 = module.ec2PrivateKey.privateKeyPemPkcs8
    private_key_pem       = module.ec2PrivateKey.privateKeyPrivateKeyPem
  }, var.KPTPKWS_SWV_SecretVersionSecretString)
  SWV_SecretVersionSecretBinary = var.KPTPKWS_SWV_SecretVersionSecretBinary
  SWV_SecretVersionStages       = var.KPTPKWS_SWV_SecretVersionStages
}

#---