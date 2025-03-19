output "databaseInstanceSelfLink"{
    value = google_sql_database_instance.databaseInstance.self_link
}

output "CSDIU_DatabaseInstanceConnectionName" {
  value = module.databaseInstance.databaseInstanceConnectionName
}

output "CSDIU_DatabaseInstanceDnsName" {
  value = module.databaseInstance.databaseInstanceDnsName
}

output "CSDIU_DatabaseInstanceServiceAccountEmailAddress" {
  value = module.databaseInstance.databaseInstanceServiceAccountEmailAddress
}

output "CSDIU_DatabaseInstanceFirstIpAddress" {
  value = module.databaseInstance.databaseInstanceFirstIpAddress
}

output "CSDIU_DatabaseInstanceAvailableMaintenanceVersion" {
  value = module.databaseInstance.databaseInstanceAvailableMaintenanceVersion
}

output "CSDIU_DatabaseInstancePublicIp" {
  value = module.databaseInstance.databaseInstancePublicIp
}

output "CSDIU_DatabaseInstancePrivateIpAddress" {
  value = module.databaseInstance.databaseInstancePrivateIpAddress
}

output "CSDIU_DatabaseInstancePscServiceAttachmentLink" {
  value = module.databaseInstance.databaseInstancePscServiceAttachmentLink
}

output "CSDIU_DatabaseInstanceInstanceType" {
  value = module.databaseInstance.databaseInstanceInstanceType
}

output "CSDIU_DatabaseInstanceRootPassword" {
  value = module.databaseInstance.databaseInstanceRootPassword
  sensitive = true
}

#---
output "databaseId"{
    value = google_sql_database.database.id
}

output "databaseSelfLink"{
    value = google_sql_database.database.self_link
}

output "CSDIU_DatabaseName" {
  value = module.database.databaseName
}

#---
output "CSDIU_DatabaseUserName" {
  value = module.databaseUser.databaseUserName
}

output "CSDIU_DatabaseUserPassword" {
  value = module.databaseUser.databaseUserPassword
  sensitive = true
}

#---
output "CSDIU_SecretId" {
  value = module.secret.secretId
}

output "CSDIU_SecretName" {
  value = module.secret.secretName
}

output "CSDIU_SecretCreateTime" {
  value = module.secret.secretCreateTime
}

output "CSDIU_SecretTerraformLabels" {
  value = module.secret.secretTerraformLabels
}

output "CSDIU_SecretEffectiveLabels" {
  value = module.secret.secretEffectiveLabels
}

output "CSDIU_SecretEffectiveAnnotations" {
  value = module.secret.secretEffectiveAnnotations
}

#---
output "CSDIU_SecretVersionId" {
  value = module.secretVersion.secretVersionId
}

output "CSDIU_SecretVersionName" {
  value = module.secretVersion.secretVersionName
}

output "CSDIU_SecretVersionVersion" {
  value = module.secretVersion.secretVersionVersion
}

output "CSDIU_SecretVersionCreateTime" {
  value = module.secretVersion.secretVersionCreateTime
}

output "CSDIU_SecretVersionDestroyTime" {
  value = module.secretVersion.secretVersionDestroyTime
}

#---
