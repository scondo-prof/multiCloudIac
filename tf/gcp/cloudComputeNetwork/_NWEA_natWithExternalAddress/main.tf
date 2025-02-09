terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.projectId
  region  = var.region
}

module "networkAddress" {
  source = "../genericNetworkAddress"

  projectId                 = var.projectId
  region                    = var.region
  resourceName              = var.resourceName
  networkAddressAddress     = var.NWEA_NetworkAddressAddress
  networkAddressType        = var.NWEA_NetworkAddressType
  networkAddressNetworkTier = var.NWEA_NetworkAddressNetworkTier
}

module "networkRouter" {
  source = "../genericNetworkRouter"

  projectId            = var.projectId
  region               = var.region
  resourceName         = var.resourceName
  networkRouterNetwork = var.NWEA_NetworkRouterNetworkName
}

module "nat" {
  source = "../genericNetworkRouterNat"

  projectId                        = var.projectId
  region                           = var.region
  resourceName                     = var.resourceName
  natRouterName                    = module.networkRouter.networkRouterName
  natIpAllocateOption              = "MANUAL_ONLY"
  natSourceSubnetworkIpRangesToNat = var.NWEA_NatSourceSubnetworkIpRangesToNat
  natIps                           = [module.networkAddress.networkAddressSelfLink]
  natMinPortsPerVm                 = var.NWEA_NatMinPortsPerVm
}