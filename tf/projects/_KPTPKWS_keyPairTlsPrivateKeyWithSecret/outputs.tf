output "KPTPKWS_Ec2KeyPairId" {
  value = module.Ec2KeyPair.keyPairId
}

output "KPTPKWS_Ec2KeyPairArn" {
  value = module.Ec2KeyPair.keyPairArn
}

output "KPTPKWS_Ec2KeyPairKeyName" {
  value = module.Ec2KeyPair.keyPairKeyName
}

output "KPTPKWS_Ec2KeyPairKeyPairId" {
  value = module.Ec2KeyPair.keyPairKeyPairId
}

output "KPTPKWS_Ec2KeyPairKeyType" {
  value = module.Ec2KeyPair.keyPairKeyType
}

output "KPTPKWS_Ec2KeyPairFingerprint" {
  value = module.Ec2KeyPair.keyPairFingerprint
}

output "KPTPKWS_Ec2KeyPairTagsAll" {
  value = module.Ec2KeyPair.keyPairTagsAll
}

#---
output "KPTPKWS_Ec2PrivateKeyId" {
  value = module.ec2PrivateKey.privateKeyId
}

output "KPTPKWS_Ec2PrivateKeyOpenSsh" {
  value     = module.ec2PrivateKey.privateKeyOpenSsh
  sensitive = true
}

output "KPTPKWS_Ec2PrivateKeyPrivateKeyPem" {
  value     = module.ec2PrivateKey.privateKeyPrivateKeyPem
  sensitive = true
}

output "KPTPKWS_Ec2PrivateKeyPemPkcs8" {
  value     = module.ec2PrivateKey.privateKeyPemPkcs8
  sensitive = true
}

output "KPTPKWS_Ec2PrivateKeyPublicKeyFingerprintMd5" {
  value = module.ec2PrivateKey.privateKeyPublicKeyFingerprintMd5
}

output "KPTPKWS_Ec2PrivateKeyPublicKeyFingerprintSha256" {
  value = module.ec2PrivateKey.privateKeyPublicKeyFingerprintSha256
}

output "KPTPKWS_Ec2PrivateKeyPublicKeyOpenSsh" {
  value = module.ec2PrivateKey.privateKeyPublicKeyOpenSsh
}

output "KPTPKWS_Ec2PrivateKeyPublicKeyPem" {
  value = module.ec2PrivateKey.privateKeyPublicKeyPem
}

#---
output "KPTPKWS_SWV_SecretArn" {
  value = module.SWV.SWV_SecretArn
}

output "KPTPKWS_SWV_SecretName" {
  value = module.SWV.SWV_SecretName
}

output "KPTPKWS_SWV_SecretVersionId" {
  value = module.SWV.SWV_SecretVersionId
}

#---
