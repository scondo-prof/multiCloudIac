output "NWSAF_NetworkId" {
  value = google_compute_network.network.id
}

output "NWSAF_NetworkGatewayIpv4" {
  value = google_compute_network.network.gateway_ipv4
}

output "NWSAF_NetworkNumericId" {
  value = google_compute_network.network.numeric_id
}

output "NWSAF_NetworkSelfLink" {
  value = google_compute_network.network.self_link
}

output "NWSAF_NetworkName" {
  value = google_compute_network.network.name
}

#---

output "NWSAF_SubnetworkId" {
  value = module.subnetwork.subnetworkId
}

output "NWSAF_SubnetworkCreationTimestamp" {
  value = module.subnetwork.subnetworkCreationTimestamp
}

output "NWSAF_SubnetworkGatewayAddress" {
  value = module.subnetwork.subnetworkGatewayAddress
}

output "NWSAF_SubnetworkIpv4CidrRange" {
  value = module.subnetwork.subnetworkIpv4CidrRange
}

output "NWSAF_SubnetworkIpv6CidrRange" {
  value = module.subnetwork.subnetworkIpv6CidrRange
}

output "NWSAF_SubnetworkInternalIpv6Prefix" {
  value = module.subnetwork.subnetworkInternalIpv6Prefix
}

output "NWSAF_SubnetworkSelfLink" {
  value = module.subnetwork.subnetworkSelfLink
}

output "NWSAF_SubnetworkName" {
  value = module.subnetwork.subnetworkName
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