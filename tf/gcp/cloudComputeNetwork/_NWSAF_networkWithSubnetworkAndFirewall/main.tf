
module "network" {
  source         = "../genericNetwork"
  gcpProjectId   = var.gcpProjectId
  gcpRegion      = var.gcpRegion
  networkObjects = var.NWSAF_NetworkObjects
}

#---

module "subnetwork" {
  depends_on        = [module.network]
  source            = "../genericSubnetwork"
  gcpProjectId      = var.gcpProjectId
  gcpRegion         = var.gcpRegion
  subnetworkObjects = var.NWSAF_SubnetworkObjects
}

#---

module "firewall" {
  depends_on      = [module.network]
  source          = "../genericFirewall"
  gcpProjectId    = var.gcpProjectId
  gcpRegion       = var.gcpRegion
  firewallObjects = var.NWSAF_FirewallObjects
}

#---
