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

module "NWSAF" {
  source = "../_NWSAF_networkWithSubnetworkAndFirewall"

  projectId                                 = var.projectId
  region                                    = var.region
  resourceName                              = var.resourceName
  NWSAF_NetworkAutoCreateSubNetworks        = var.NWEIPN_NetworkAutoCreateSubNetworks
  NWSAF_NetworkRoutingMode                  = var.NWEIPN_NetworkRoutingMode
  NWSAF_NetworkMaximumTransmissionUnitBytes = var.NWEIPN_NetworkMaximumTransmissionUnitBytes
  NWSAF_NetworkDeleteDefaultRoutesOnCreate  = var.NWEIPN_NetworkDeleteDefaultRoutesOnCreate
  NWSAF_SubnetworkIpCidrRange               = var.NWEIPN_SubnetworkIpCidrRange
  NWSAF_FirewallIngressRules                = var.NWEIPN_FirewallIngressRules
  NWSAF_FirewallIngressDisabled             = var.NWEIPN_FirewallIngressDisabled
  NWSAF_FirewallIngressPriority             = var.NWEIPN_FirewallIngressPriority
  NWSAF_FirewallIngressSourceRanges         = var.NWEIPN_FirewallIngressSourceRanges
  NWSAF_FirewallEgressRules                 = var.NWEIPN_FirewallEgressRules
  NWSAF_FirewallEgressDisabled              = var.NWEIPN_FirewallEgressDisabled
  NWSAF_FirewallEgressPriority              = var.NWEIPN_FirewallEgressPriority
  NWSAF_FirewallEgressSourceRanges          = var.NWEIPN_FirewallEgressSourceRanges
}

module "NWEA" {
  source = "../_NWEA_natWithExternalAddress"

  projectId                             = var.projectId
  region                                = var.region
  resourceName                          = var.resourceName
  NWEA_NetworkAddressAddress            = var.NWEIPN_NetworkAddressAddress
  NWEA_NetworkAddressType               = var.NWEIPN_NetworkAddressType
  NWEA_NetworkAddressNetworkTier        = var.NWEIPN_NetworkAddressNetworkTier
  NWEA_NetworkRouterNetworkName         = var.NWEIPN_NetworkRouterNetworkName
  NWEA_NatSourceSubnetworkIpRangesToNat = var.NWEIPN_NatSourceSubnetworkIpRangesToNat
  NWEA_NatMinPortsPerVm                 = var.NWEIPN_NatMinPortsPerVm
}

module "vpcAccessConnector" {
  source = "../genericVpcAccessConnector"

  projectId                      = var.projectId
  region                         = var.region
  resourceName                   = var.resourceName
  vpcAccessConnectorSubnet       = module.networkWithSubnet.subnetworkName
  vpcAccessConnectorMachineType  = var.NWEIPN_VpcAccessConnectorMachineType
  vpcAccessConnectorMinInstances = var.NWEIPN_VpcAccessConnectorMinInstances
  vpcAccessConnectorMaxInstances = var.NWEIPN_VpcAccessConnectorMaxInstances
}