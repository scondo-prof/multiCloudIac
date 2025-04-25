
module "network" {
  source         = "../genericNetwork"
  gcpProjectId   = var.gcpProjectId
  gcpRegion      = var.gcpRegion
  networkObjects = var.NWSAF_NetworkObjects
}

#---

module "subnetwork" {
  source            = "../genericSubnetwork"
  gcpProjectId      = var.gcpProjectId
  gcpRegion         = var.gcpRegion
  subnetworkObjects = var.NWSAF_SubnetworkObjects
  subnetworkNetwork = module.network.networkId[0]
}

#---

module "firewall" {
  source          = "../genericFirewall"
  gcpProjectId    = var.gcpProjectId
  gcpRegion       = var.gcpRegion
  firewallObjects = var.NWSAF_FirewallObjects
  firewallNetwork = module.network.networkId[0]
}

#---
