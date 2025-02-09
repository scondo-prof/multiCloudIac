output "NWSAF_NetworkId" {
  value = module.network.networkId
}

output "NWSAF_NetworkName" {
  value = module.network.networkName
}

output "NWSAF_SubnetworkId" {
  value = module.subnetwork.subnetworkId
}

output "NWSAF_SubnetworkName" {
  value = module.subnetwork.subnetworkName
}

output "NWSAF_FirewallIngressId" {
  value = module.firewallIngress.firewallId
}

output "NWSAF_FirewallIngressName" {
  value = module.firewallIngress.firewallName
}

output "NWSAF_FirewallEgressId" {
  value = module.firewallEgress.firewallId
}

output "NWSAF_FirewallEgressName" {
  value = module.firewallEgress.firewallName
}