terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

module "networkAddress" {
  source = "../genericNetworkAddress"

  gcpProjectId                 = var.gcpProjectId
  gcpRegion                    = var.gcpRegion
  resourceName              = var.resourceName
  deployedDate = var.deployedDate
  projectName = var.projectName
  createdBy = var.createdBy
  tfModule = var.tfModule
  additionalTags = var.additionalTags
  networkAddressAddress     = var.NWEA_NetworkAddressAddress
  networkAddressType        = var.NWEA_NetworkAddressType
  networkAddressNetworkTier = var.NWEA_NetworkAddressNetworkTier
}

module "networkRouter" {
  source = "../genericNetworkRouter"

  gcpProjectId                 = var.gcpProjectId
  gcpRegion                    = var.gcpRegion
  resourceName         = var.resourceName
  networkRouterNetwork = var.NWEA_NetworkRouterNetworkName
}

module "nat" {
  source = "../genericNetworkRouterNat"

  gcpProjectId                 = var.gcpProjectId
  gcpRegion                    = var.gcpRegion
  resourceName                     = var.resourceName
  natRouterName                    = module.networkRouter.networkRouterName
  natIpAllocateOption              = "MANUAL_ONLY"
  natSourceSubnetworkIpRangesToNat = var.NWEA_NatSourceSubnetworkIpRangesToNat
  natIps                           = [module.networkAddress.networkAddressSelfLink]
  natMinPortsPerVm                 = var.NWEA_NatMinPortsPerVm
}