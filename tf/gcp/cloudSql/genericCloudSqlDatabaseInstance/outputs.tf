output "databaseInstanceSelfLink"{
    value = google_sql_database_instance.databaseInstance.self_link
}

output "databaseInstanceConnectionName" {
  value = google_sql_database_instance.databaseInstance.connection_name
}

output "databaseInstanceDnsName" {
  value = google_sql_database_instance.databaseInstance.dns_name
}

output "databaseInstanceServiceAccountEmailAddress" {
  value = google_sql_database_instance.databaseInstance.service_account_email_address
}

output "databaseInstanceFirstIpAddress" {
  value = google_sql_database_instance.databaseInstance.first_ip_address
}

output "databaseInstanceAvailableMaintenanceVersion" {
  value = google_sql_database_instance.databaseInstance.available_maintenance_versions
}

output "databaseInstancePublicIp" {
  value = google_sql_database_instance.databaseInstance.public_ip_address
}

output "databaseInstancePrivateIpAddress" {
  value = google_sql_database_instance.databaseInstance.private_ip_address
}

output "databaseInstancePscServiceAttachmentLink" {
  value = google_sql_database_instance.databaseInstance.psc_service_attachment_link
}

output "databaseInstanceInstanceType" {
  value = google_sql_database_instance.databaseInstance.instance_type
}

output "databaseInstanceRootPassword" {
  value = google_sql_database_instance.databaseInstance.root_password
  sensitive = true
}