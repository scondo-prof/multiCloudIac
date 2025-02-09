output "CSDIU_DatabaseInstanceSelfLink" {
  value = module.databaseInstance.selfLink
}

output "CSDIU_DatabaseInstanceConnectionName" {
  value = module.databaseInstance.connectionName
}

output "CSDIU_DatabaseInstanceDnsName" {
  value = module.databaseInstance.dnsName
}

output "CSDIU_DatabaseInstancePublicIp" {
  value = module.databaseInstance.publicIp
}

output "CSDIU_DatabaseInstanceRootPassword" {
  value     = module.databaseInstance.rootPassword
  sensitive = true
}

output "CSDIU_DatabaseInstanceName" {
  value = module.databaseInstance.name
}

output "CSDIU_DatabaseId" {
  value = module.database.id
}

output "CSDIU_DatabaseSelfLink" {
  value = module.database.selfLink
}

output "CSDIU_DatabaseName" {
  value = module.database.name
}

output "CSDIU_DatabaseUserName" {
  value = module.databaseUser.name
}

output "CSDIU_DatabaseUserPassword" {
  value     = module.databaseUser.password
  sensitive = true
}

output "CSDIU_DatabaseSecretId" {
  value = module.databaseSecret.secretId
}

output "CSDIU_DatabaseSecretName" {
  value = module.databaseSecret.secretName
}

output "CSDIU_DatabasePublicIpSecretVersionName" {
  value = module.databasePublicIpSecretVersion.secretVersionName
}

output "CSDIU_DatabaseUserNameSecretVersionName" {
  value = module.databaseUserNameSecretVersion.secretVersionName
}

output "CSDIU_DatabaseUserPasswordSecretVersionName" {
  value = module.databaseUserPasswordSecretVersion.secretVersionName
}

output "CSDIU_DatabaseNameSecretVersionName" {
  value = module.databaseNameSecretVersion.secretVersionName
}