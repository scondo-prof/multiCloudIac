output "networkAddressId" {
  value = google_compute_address.networkAddress.id
}

output "networkAddressSelfLink" {
  value = google_compute_address.networkAddress.self_link
}

output "networkAddressExternalIp" {
  value = google_compute_address.networkAddress.address
}