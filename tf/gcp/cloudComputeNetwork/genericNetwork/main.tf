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
  count = length(var.networkObjects)
  name                                      = "${var.networkObjects[count.index]["name"]}-network"
  description                               = var.networkObjects[count.index][""]#var.networkDescription
  auto_create_subnetworks                   = var.networkObjects[count.index][""]#var.networkAutoCreateSubNetworks
  routing_mode                              = var.networkObjects[count.index][""]#var.networkRoutingMode
  mtu                                       = var.networkObjects[count.index][""]#var.networkMaximumTransmissionUnitBytes
  enable_ula_internal_ipv6                  = var.networkObjects[count.index][""]#var.networkEnableUlaInternalIpv6
  internal_ipv6_range                       = var.networkObjects[count.index][""]#var.networkInternalIpv6Range
  network_firewall_policy_enforcement_order = var.networkObjects[count.index][""]#var.networkFirewallPolicyEnforcementOrder
  project                                   = var.gcpProjectId
  delete_default_routes_on_create           = var.networkObjects[count.index][""]#var.networkDeleteDefaultRoutesOnCreate
}

