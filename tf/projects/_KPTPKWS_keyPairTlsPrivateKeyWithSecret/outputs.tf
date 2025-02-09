output "KPTPKWS_KeyPairId" {
  value = module.keyPair.keyPairId
}

output "KPTPKWS_KeyPairArn" {
  value = module.keyPair.keyPairArn
}

output "KPTPKWS_KeyPairKeyName" {
  value = module.keyPair.keyPairKeyName
}

output "KPTPKWS_KeyPairKeyPairId" {
  value = module.keyPair.keyPairKeyPairId
}

output "KPTPKWS_KeyPairKeyType" {
  value = module.keyPair.keyPairKeyType
}

output "KPTPKWS_KeyPairFingerprint" {
  value = module.keyPair.keyPairFingerprint
}

output "KPTPKWS_KeyPairTagsAll" {
  value = module.keyPair.keyPairTagsAll
}

#---
output "KPTPKWS_PrivateKeyId" {
  value = module.privateKey.privateKeyId
}

output "KPTPKWS_PrivateKeyOpenSsh" {
  value     = module.privateKey.privateKeyOpenSsh
  sensitive = true
}

output "KPTPKWS_PrivateKeyPrivateKeyPem" {
  value     = module.privateKey.privateKeyPrivateKeyPem
  sensitive = true
}

output "KPTPKWS_PrivateKeyPemPkcs8" {
  value     = module.privateKey.privateKeyPemPkcs8
  sensitive = true
}

output "KPTPKWS_PrivateKeyPublicKeyFingerprintMd5" {
  value = module.privateKey.privateKeyPublicKeyFingerprintMd5
}

output "KPTPKWS_PrivateKeyPublicKeyFingerprintSha256" {
  value = module.privateKey.privateKeyPublicKeyFingerprintSha256
}

output "KPTPKWS_PrivateKeyPublicKeyOpenSsh" {
  value = module.privateKey.privateKeyPublicKeyOpenSsh
}

output "KPTPKWS_PrivateKeyPublicKeyPem" {
  value = module.privateKey.privateKeyPublicKeyPem
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
