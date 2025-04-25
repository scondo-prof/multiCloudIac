output "subnetworkId" {
  value = google_compute_subnetwork.subnetwork[*].id
}

output "subnetworkCreationTimestamp" {
  value = google_compute_subnetwork.subnetwork[*].creation_timestamp
}

output "subnetworkGatewayAddress" {
  value = google_compute_subnetwork.subnetwork[*].gateway_address
}

output "subnetworkIpv4CidrRange" {
  value = google_compute_subnetwork.subnetwork[*].ip_cidr_range
}

output "subnetworkIpv6CidrRange" {
  value = google_compute_subnetwork.subnetwork[*].ipv6_cidr_range
}

output "subnetworkInternalIpv6Prefix" {
  value = google_compute_subnetwork.subnetwork[*].internal_ipv6_prefix
}

output "subnetworkSelfLink" {
  value = google_compute_subnetwork.subnetwork[*].self_link
}

output "subnetworkName" {
  value = google_compute_subnetwork.subnetwork[*].name
}