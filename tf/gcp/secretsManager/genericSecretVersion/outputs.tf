output "secretVersionId" {
  value = google_secret_manager_secret_version.secretVersion[*].id
}

output "secretVersionName" {
  value = google_secret_manager_secret_version.secretVersion[*].name
}

output "secretVersionVersion" {
  value = google_secret_manager_secret_version.secretVersion[*].version
}

output "secretVersionCreateTime" {
  value = google_secret_manager_secret_version.secretVersion[*].create_time
}

output "secretVersionDestroyTime" {
  value = google_secret_manager_secret_version.secretVersion[*].destroy_time
}