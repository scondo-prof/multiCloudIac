output "PKS_PasswordBcryptHash" {
  value     = module.password.passwordBcryptHash
  sensitive = true
}

output "PKS_PasswordId" {
  value = module.password.passwordId
}

output "PKS_PasswordResult" {
  value     = module.password.passwordResult
  sensitive = true
}

#---
output "PKS_PrivateKeyId" {
  value = module.privateKey.privateKeyId
}

output "PKS_PrivateKeyOpenSsh" {
  value     = module.privateKey.privateKeyOpenSsh
  sensitive = true
}

output "PKS_PrivateKeyPrivateKeyPem" {
  value     = module.privateKey.privateKeyPrivateKeyPem
  sensitive = true
}

output "PKS_PrivateKeyPemPkcs8" {
  value     = module.privateKey.privateKeyPemPkcs8
  sensitive = true
}

output "PKS_PrivateKeyPublicKeyFingerprintMd5" {
  value = module.privateKey.privateKeyPublicKeyFingerprintMd5
}

output "PKS_PrivateKeyPublicKeyFingerprintSha256" {
  value = module.privateKey.privateKeyPublicKeyFingerprintSha256
}

output "PKS_PrivateKeyPublicKeyOpenSsh" {
  value = module.privateKey.privateKeyPublicKeyOpenSsh
}

output "PKS_PrivateKeyPublicKeyPem" {
  value = module.privateKey.privateKeyPublicKeyPem
}

#---
output "PKS_SWV_SecretArn" {
  value = module.SWV.SWV_SecretArn
}

output "PKS_SWV_SecretName" {
  value = module.SWV.SWV_SecretName
}

output "PKS_SWV_SecretVersionId" {
  value = module.SWV.SWV_SecretVersionId
}

#---
