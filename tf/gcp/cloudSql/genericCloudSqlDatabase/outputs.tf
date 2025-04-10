output "databaseId" {
  value = google_sql_database.database.id
}

output "databaseSelfLink" {
  value = google_sql_database.database.self_link
}

output "databaseName" {
  value = google_sql_database.database.name
}