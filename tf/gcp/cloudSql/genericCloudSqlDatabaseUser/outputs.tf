output "name" {
  value = google_sql_user.databaseUser.name
}

output "password" {
  value = google_sql_user.databaseUser.password
  sensitive = true
}