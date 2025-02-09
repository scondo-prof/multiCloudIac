output "SUP_PKS_PasswordBcryptHash" {
  value     = module.PKS.PKS_PasswordBcryptHash
  sensitive = true
}

output "SUP_PKS_PasswordId" {
  value = module.PKS.PKS_PasswordId
}

output "SUP_PKS_PasswordResult" {
  value     = module.PKS.PKS_PasswordResult
  sensitive = true
}



output "SUP_PKS_PrivateKeyId" {
  value = module.PKS.PKS_PrivateKeyId
}

output "SUP_PKS_PrivateKeyOpenSsh" {
  value     = module.PKS.PKS_PrivateKeyOpenSsh
  sensitive = true
}

output "SUP_PKS_PrivateKeyPrivateKeyPem" {
  value     = module.PKS.PKS_PrivateKeyPrivateKeyPem
  sensitive = true
}

output "SUP_PKS_PrivateKeyPemPkcs8" {
  value     = module.PKS.PKS_PrivateKeyPemPkcs8
  sensitive = true
}

output "SUP_PKS_PrivateKeyPublicKeyFingerprintMd5" {
  value = module.PKS.PKS_PrivateKeyPublicKeyFingerprintMd5
}

output "SUP_PKS_PrivateKeyPublicKeyFingerprintSha256" {
  value = module.PKS.PKS_PrivateKeyPublicKeyFingerprintSha256
}

output "SUP_PKS_PrivateKeyPublicKeyOpenSsh" {
  value = module.PKS.PKS_PrivateKeyPublicKeyOpenSsh
}

output "SUP_PKS_PrivateKeyPublicKeyPem" {
  value = module.PKS.PKS_PrivateKeyPublicKeyPem
}


output "SUP_PKS_SWV_SecretArn" {
  value = module.PKS.PKS_SWV_SecretArn
}

output "SUP_PKS_SWV_SecretName" {
  value = module.PKS.PKS_SWV_SecretName
}

output "SUP_PKS_SWV_SecretVersionId" {
  value = module.PKS.PKS_SWV_SecretVersionId
}




#---
output "SUP_SnowflakeUserFullyQualifiedName" {
  value = module.snowflakeUser.userFullyQualifiedName
}

output "SUP_SnowflakeUserId" {
  value = module.snowflakeUser.userId
}

output "SUP_SnowflakeUserParameters" {
  value = module.snowflakeUser.userParameters
}

output "SUP_SnowflakeUserShowOutput" {
  value = module.snowflakeUser.userShowOutput
}

output "SUP_SnowflakeUserType" {
  value = module.snowflakeUser.userType
}

#---
