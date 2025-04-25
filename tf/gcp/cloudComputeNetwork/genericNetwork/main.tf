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
  count                                     = length(var.networkObjects)
  name                                      = "${var.networkObjects[count.index]["name"]}-network"
  description                               = var.networkObjects[count.index]["description"]
  auto_create_subnetworks                   = var.networkObjects[count.index]["auto_create_subnetworks"]
  routing_mode                              = var.networkObjects[count.index]["routing_mode"]
  mtu                                       = var.networkObjects[count.index]["mtu"]
  enable_ula_internal_ipv6                  = var.networkObjects[count.index]["enable_ula_internal_ipv6"]
  internal_ipv6_range                       = var.networkObjects[count.index]["internal_ipv6_range"]
  network_firewall_policy_enforcement_order = var.networkObjects[count.index]["network_firewall_policy_enforcement_order"]
  project                                   = var.gcpProjectId
  delete_default_routes_on_create           = var.networkObjects[count.index]["delete_default_routes_on_create"]
}

