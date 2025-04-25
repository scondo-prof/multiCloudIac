output "firewallId" {
  value = google_compute_firewall.firewall[*].id
}

output "firewallCreationTimestamp" {
  value = google_compute_firewall.firewall[*].creation_timestamp
}

output "firewallSelfLink" {
  value = google_compute_firewall.firewall[*].self_link
}

output "firewallName" {
  value = google_compute_firewall.firewall[*].name
}