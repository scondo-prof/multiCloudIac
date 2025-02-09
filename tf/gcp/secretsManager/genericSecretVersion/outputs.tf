output "secretVersionName" {
  value = google_secret_manager_secret_version.secretVersion.name
}

output "secretVersionId" {
  value = google_secret_manager_secret_version.secretVersion.id
}

