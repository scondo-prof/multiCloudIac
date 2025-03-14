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

module "network" {
  source = "../genericNetwork"

  gcpProjectId                           = var.gcpProjectId
  gcpRegion                              = var.gcpRegion
  resourceName                        = var.resourceName
  networkAutoCreateSubNetworks        = var.NWSAF_NetworkAutoCreateSubNetworks
  networkRoutingMode                  = var.NWSAF_NetworkRoutingMode
  networkMaximumTransmissionUnitBytes = var.NWSAF_NetworkMaximumTransmissionUnitBytes
  networkDeleteDefaultRoutesOnCreate  = var.NWSAF_NetworkDeleteDefaultRoutesOnCreate
}

module "subnetwork" {
  source = "../genericSubnetwork"

  gcpProjectId             = var.gcpProjectId
  gcpRegion                = var.gcpRegion
  resourceName          = var.resourceName
  subnetworkIpCidrRange = var.NWSAF_SubnetworkIpCidrRange
  subnetworkNetworkId   = module.network.networkId
}

module "firewallIngress" {
  source = "../genericFirewall"

  gcpProjectId            = var.gcpProjectId
  gcpRegion               = var.gcpRegion
  resourceName         = "ingress-${var.resourceName}"
  firewallNetwork      = module.network.networkName
  firewallRules        = var.NWSAF_FirewallIngressRules
  firewallDirection    = "INGRESS"
  firewallDisabled     = var.NWSAF_FirewallIngressDisabled
  firewallPriority     = var.NWSAF_FirewallIngressPriority
  firewallSourceRanges = var.NWSAF_FirewallIngressSourceRanges
}

module "firewallEgress" {
  source = "../genericFirewall"

  gcpProjectId            = var.gcpProjectId
  gcpRegion               = var.gcpRegion
  resourceName         = "egress-${var.resourceName}"
  firewallNetwork      = module.network.networkName
  firewallRules        = var.NWSAF_FirewallEgressRules
  firewallDirection    = "EGRESS"
  firewallDisabled     = var.NWSAF_FirewallEgressDisabled
  firewallPriority     = var.NWSAF_FirewallEgressPriority
  firewallSourceRanges = var.NWSAF_FirewallEgressSourceRanges
}