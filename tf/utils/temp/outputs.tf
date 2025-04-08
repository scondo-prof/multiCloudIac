output "snowflakeRoleFullyQualifiedName" {
  value = module.SARARG.snowflakeRoleFullyQualifiedName
}

output "snowflakeRoleId" {
  value = module.SARARG.snowflakeRoleId
}

output "snowflakeRoleShowOutput" {
  value = module.SARARG.snowflakeRoleShowOutput
}


output "SS_SARARG_GrantPrivilegesId" {
  value = module.SARARG.SARARG_GrantPrivilegesId
}

#---
output "SS_SUP_PKS_PasswordBcryptHash" {
  value     = module.SUP.SUP_PKS_PasswordBcryptHash
  sensitive = true
}

output "SS_SUP_PKS_PasswordId" {
  value = module.SUP.SUP_PKS_PasswordId
}

output "SS_SUP_PKS_PasswordResult" {
  value     = module.SUP.SUP_PKS_PasswordResult
  sensitive = true
}


output "SS_SUP_PKS_PrivateKeyId" {
  value = module.SUP.SUP_PKS_PrivateKeyId
}

output "SS_SUP_PKS_PrivateKeyOpenSsh" {
  value     = module.SUP.SUP_PKS_PrivateKeyOpenSsh
  sensitive = true
}

output "SS_SUP_PKS_PrivateKeyPrivateKeyPem" {
  value     = module.SUP.SUP_PKS_PrivateKeyPrivateKeyPem
  sensitive = true
}

output "SS_SUP_PKS_PrivateKeyPemPkcs8" {
  value     = module.SUP.SUP_PKS_PrivateKeyPemPkcs8
  sensitive = true
}

output "SS_SUP_PKS_PrivateKeyPublicKeyFingerprintMd5" {
  value = module.SUP.SUP_PKS_PrivateKeyPublicKeyFingerprintMd5
}

output "SS_SUP_PKS_PrivateKeyPublicKeyFingerprintSha256" {
  value = module.SUP.SUP_PKS_PrivateKeyPublicKeyFingerprintSha256
}

output "SS_SUP_PKS_PrivateKeyPublicKeyOpenSsh" {
  value = module.SUP.SUP_PKS_PrivateKeyPublicKeyOpenSsh
}

output "SS_SUP_PKS_PrivateKeyPublicKeyPem" {
  value = module.SUP.SUP_PKS_PrivateKeyPublicKeyPem
}


output "SS_SUP_PKS_SWV_SecretArn" {
  value = module.SUP.SUP_PKS_SWV_SecretArn
}

output "SS_SUP_PKS_SWV_SecretName" {
  value = module.SUP.SUP_PKS_SWV_SecretName
}

output "SS_SUP_PKS_SWV_SecretVersionId" {
  value = module.SUP.SUP_PKS_SWV_SecretVersionId
}




output "SS_SUP_SnowflakeUserFullyQualifiedName" {
  value = module.SUP.SUP_SnowflakeUserFullyQualifiedName
}

output "SS_SUP_SnowflakeUserId" {
  value = module.SUP.SUP_SnowflakeUserId
}

output "SS_SUP_SnowflakeUserParameters" {
  value = module.SUP.SUP_SnowflakeUserParameters
}

output "SS_SUP_SnowflakeUserShowOutput" {
  value = module.SUP.SUP_SnowflakeUserShowOutput
}

output "SS_SUP_SnowflakeUserType" {
  value = module.SUP.SUP_SnowflakeUserType
}



#---
output "SS_GrantAccountRoleId" {
  value = module.grantAccountRole.grantAccountRoleId
}

#---
