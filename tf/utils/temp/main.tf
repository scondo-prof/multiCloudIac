
module "networkAddress" {
  source               = "../genericNetworkAddress"
  gcpProjectId         = var.gcpProjectId
  gcpRegion            = var.gcpRegion
  networkAddressObject = var.NWEA_NetworkAddressObject
  projectName          = var.projectName
  deployedDate         = var.deployedDate
  createdBy            = var.createdBy
  tfModule             = var.tfModule
  additionalTags       = var.additionalTags
}

#---

module "networkRouter" {
  source               = "../genericNetworkRouter"
  gcpProjectId         = var.gcpProjectId
  gcpRegion            = var.gcpRegion
  networkRouterObjects = var.NWEA_NetworkRouterObjects
  networkRouterNetwork = var.NWEA_NetworkRouterNetwork
}

#---

module "nat" {
  source       = "../genericNetworkRouterNat"
  gcpProjectId = var.gcpProjectId
  gcpRegion    = var.gcpRegion
  natObject    = var.NWEA_NatObject
}

#---
