output "secretId" {
  value = google_secret_manager_secret.secret.id
}

output "secretName" {
  value = google_secret_manager_secret.secret.secret_id
}

output "secretCreateTime" {
  value = google_secret_manager_secret.secret.create_time
}

output "secretTerraformLabels" {
  value = google_secret_manager_secret.secret.terraform_labels
}

output "secretEffectiveLabels" {
  value = google_secret_manager_secret.secret.effective_labels
}

output "secretEffectiveAnnotations" {
  value = google_secret_manager_secret.secret.effective_annotations
}