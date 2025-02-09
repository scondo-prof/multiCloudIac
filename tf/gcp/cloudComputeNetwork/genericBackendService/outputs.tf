output "backendServiceId" {
  value = google_compute_backend_service.backendService.id
}

output "backendServiceFingerprint" {
  value = google_compute_backend_service.backendService.fingerprint
}

output "backendServiceName" {
  value = google_compute_backend_service.backendService.name
}
output "backendServiceSelfLink" {
  value = google_compute_backend_service.backendService.self_link
}