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

resource "google_compute_router" "networkRouter" {
  name    = "${var.resourceName}-network-router"
  network = var.networkRouterNetwork
  region  = var.region
  project = var.projectId
}