
module "network" {
  source         = "../genericNetwork"
  gcpProjectId   = var.gcpProjectId
  gcpRegion      = var.gcpRegion
  networkObjects = var.NWSAF_NetworkObjects
  resourceName   = var.resourceName
}

#---

module "subnetwork" {
  source            = "../genericSubnetwork"
  gcpProjectId      = var.gcpProjectId
  gcpRegion         = var.gcpRegion
  subnetworkObjects = var.NWSAF_SubnetworkObjects
  resourceName      = var.resourceName
  subnetworkNetwork = module.network.networkId[0]
}

#---

module "firewall" {
  source          = "../genericFirewall"
  gcpProjectId    = var.gcpProjectId
  gcpRegion       = var.gcpRegion
  firewallObjects = var.NWSAF_FirewallObjects
  resourceName    = var.resourceName
  firewallNetwork = module.network.networkId[0]
}

#---
