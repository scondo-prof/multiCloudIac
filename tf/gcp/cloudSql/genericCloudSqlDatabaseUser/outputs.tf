output "databaseUserName" {
  value = google_sql_user.databaseUser.name
}

output "databaseUserPassword" {
  value     = google_sql_user.databaseUser.password
  sensitive = true
}