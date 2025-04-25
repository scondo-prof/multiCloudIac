output "networkId" {
  value = google_compute_network.network[*].id
}

output "networkGatewayIpv4" {
  value = google_compute_network.network[*].gateway_ipv4
}

output "networkNumericId" {
  value = google_compute_network.network[*].numeric_id
}

output "networkSelfLink" {
  value = google_compute_network.network[*].self_link
}

output "networkName" {
  value = google_compute_network.network[*].name
}