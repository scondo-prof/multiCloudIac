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

resource "google_compute_network" "network" {
  name                                      = "${var.resourceName}-network"
  description                               = var.networkDescription
  auto_create_subnetworks                   = var.networkAutoCreateSubNetworks
  routing_mode                              = var.networkRoutingMode
  mtu                                       = var.networkMaximumTransmissionUnitBytes
  enable_ula_internal_ipv6                  = var.networkEnableUlaInternalIpv6
  internal_ipv6_range                       = var.networkInternalIpv6Range
  network_firewall_policy_enforcement_order = var.networkFirewallPolicyEnforcementOrder
  project                                   = var.gcpProjectId
  delete_default_routes_on_create           = var.networkDeleteDefaultRoutesOnCreate
}

