output "secretId" {
  value = google_secret_manager_secret.secret.id
}

output "secretName" {
  value = google_secret_manager_secret.secret.secret_id
}