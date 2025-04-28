output "networkRouterId" {
  value = google_compute_router.networkRouter[*].id
}

output "networkRouterName" {
  value = google_compute_router.networkRouter[*].name
}

output "networkRouterSelfLink" {
  value = google_compute_router.networkRouter[*].self_link
}

output "networkRouterCreationTimestamp" {
  value = google_compute_router.networkRouter[*].creation_timestamp
}