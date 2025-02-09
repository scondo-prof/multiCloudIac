output "selfLink"{
    value = google_sql_database_instance.databaseInstance.self_link
}

output "connectionName" {
  value = google_sql_database_instance.databaseInstance.connection_name
}

output "dnsName" {
  value = google_sql_database_instance.databaseInstance.dns_name
}

output "publicIp" {
  value = google_sql_database_instance.databaseInstance.public_ip_address
}

output "rootPassword" {
  value = google_sql_database_instance.databaseInstance.root_password
  sensitive = true
}

output "name" {
  value = google_sql_database_instance.databaseInstance.name
}