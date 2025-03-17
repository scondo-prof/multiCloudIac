output "networkId" {
  value = google_compute_network.network.id
}

output "networkGatewayIpv4" {
  value = google_compute_network.network.gateway_ipv4
}

output "networkNumericId" {
  value = google_compute_network.network.numeric_id
}

output "networkSelfLink" {
  value = google_compute_network.network.self_link
}

output "networkName" {
  value = google_compute_network.network.name
}

#---

output "NWSAF_IngressFirewallId" {
  value = module.ingressFirewall.firewallId
}

output "NWSAF_IngressFirewallCreationTimestamp" {
  value = module.ingressFirewall.firewallCreationTimestamp
}

output "NWSAF_IngressFirewallSelfLink" {
  value = module.ingressFirewall.firewallSelfLink
}

output "NWSAF_IngressFirewallName" {
  value = module.ingressFirewall.firewallName
}

#---
output "NWSAF_EgressFirewallId" {
  value = module.egressFirewall.firewallId
}

output "NWSAF_EgressFirewallCreationTimestamp" {
  value = module.egressFirewall.firewallCreationTimestamp
}

output "NWSAF_EgressFirewallSelfLink" {
  value = module.egressFirewall.firewallSelfLink
}

output "NWSAF_EgressFirewallName" {
  value = module.egressFirewall.firewallName
}

#---