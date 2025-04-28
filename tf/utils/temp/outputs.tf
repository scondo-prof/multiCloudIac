output "NWSAF_NetworkId" {
  value = module.network.networkId
}

output "NWSAF_NetworkGatewayIpv4" {
  value = module.network.networkGatewayIpv4
}

output "NWSAF_NetworkNumericId" {
  value = module.network.networkNumericId
}

output "NWSAF_NetworkSelfLink" {
  value = module.network.networkSelfLink
}

output "NWSAF_NetworkName" {
  value = module.network.networkName
}

#---
output "subnetworkId" {
  value = module.subnetwork.subnetworkId
}

output "subnetworkCreationTimestamp" {
  value = module.subnetwork.subnetworkCreationTimestamp
}

output "subnetworkGatewayAddress" {
  value = module.subnetwork.subnetworkGatewayAddress
}

output "subnetworkIpv4CidrRange" {
  value = module.subnetwork.subnetworkIpv4CidrRange
}

output "subnetworkIpv6CidrRange" {
  value = module.subnetwork.subnetworkIpv6CidrRange
}

output "subnetworkInternalIpv6Prefix" {
  value = module.subnetwork.subnetworkInternalIpv6Prefix
}

output "subnetworkSelfLink" {
  value = module.subnetwork.subnetworkSelfLink
}

output "subnetworkName" {
  value = module.subnetwork.subnetworkName
}

#---
output "NWSAF_FirewallId" {
  value = module.firewall.firewallId
}

output "NWSAF_FirewallCreationTimestamp" {
  value = module.firewall.firewallCreationTimestamp
}

output "NWSAF_FirewallSelfLink" {
  value = module.firewall.firewallSelfLink
}

output "NWSAF_FirewallName" {
  value = module.firewall.firewallName
}

#---
