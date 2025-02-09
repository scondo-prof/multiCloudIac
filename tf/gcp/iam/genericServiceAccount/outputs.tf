output "serviceAccountId" {
  value = google_service_account.serviceAccount.id
}

output "serviceAccountEmail" {
  value = google_service_account.serviceAccount.email
}

output "serviceAccountDisplayName" {
  value = google_service_account.serviceAccount.display_name
}