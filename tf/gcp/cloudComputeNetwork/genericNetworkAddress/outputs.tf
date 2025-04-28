output "networkAddressId" {
  value = google_compute_address.networkAddress.id
}

output "networkAddressCreationTimestamp" {
  value = google_compute_address.networkAddress.creation_timestamp
}

output "networkAddressUsers" {
  value = google_compute_address.networkAddress.users
}

output "networkAddressLabelFingerprint" {
  value = google_compute_address.networkAddress.label_fingerprint
}

output "networkAddressTerraformLabels" {
  value = google_compute_address.networkAddress.terraform_labels
}

output "networkAddressEffectiveLabels" {
  value = google_compute_address.networkAddress.effective_labels
}

output "networkAddressSelfLink" {
  value = google_compute_address.networkAddress.self_link
}

output "networkAddressExternalIp" {
  value = google_compute_address.networkAddress.address
}