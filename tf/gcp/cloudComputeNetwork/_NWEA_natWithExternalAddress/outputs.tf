output "NWEA_NetworkAddressId" {
  value = module.networkAddress.networkAddressId
}

output "NWEA_NetworkAddressSelfLink" {
  value = module.networkAddress.networkAddressSelfLink
}

output "NWEA_NetworkAddressExternalIp" {
  value = module.networkAddress.networkAddressExternalIp
}

#---

output "NWEA_NetworkRouterId" {
  value = module.networkRouter.networkRouterId
}

output "NWEA_NetworkRouterName" {
  value = module.networkRouter.networkRouterName
}

output "NWEA_NetworkRouterSelfLink" {
  value = module.networkRouter.networkRouterSelfLink
}

output "NWEA_NetworkRouterCreationTimestamp" {
  value = module.networkRouter.networkRouterCreationTimestamp
}

#---

output "NWEA_NatId" {
  value = module.nat.natId
}

output "NWEA_NatName" {
  value = module.nat.natName
}