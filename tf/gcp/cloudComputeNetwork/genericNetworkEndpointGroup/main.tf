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

resource "google_compute_network_endpoint_group" "neg" {
  name    = "${var.resourceName}-neg"
  network = var.negNetwork

  description           = var.negDescription
  network_endpoint_type = var.negNetworkEndpointType
  subnetwork            = var.negSubnetwork
  default_port          = var.negDefaultPort
  zone                  = var.negZone
  project               = var.gcpProjectId
}