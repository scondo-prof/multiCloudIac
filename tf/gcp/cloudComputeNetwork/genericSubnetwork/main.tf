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

resource "google_compute_subnetwork" "subnetwork" {
  name          = "${var.resourceName}-subnetwork"
  ip_cidr_range = var.subnetworkIpCidrRange
  region        = var.region
  network       = var.subnetworkNetworkId
  project       = var.projectId
}