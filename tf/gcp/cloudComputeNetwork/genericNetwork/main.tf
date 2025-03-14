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

resource "google_compute_network" "network" {
  name                            = "${var.resourceName}-network"
  auto_create_subnetworks         = var.networkAutoCreateSubNetworks
  routing_mode                    = var.networkRoutingMode
  mtu                             = var.networkMaximumTransmissionUnitBytes
  project                         = var.projectId
  delete_default_routes_on_create = var.networkDeleteDefaultRoutesOnCreate
}

