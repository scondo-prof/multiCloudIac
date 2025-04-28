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