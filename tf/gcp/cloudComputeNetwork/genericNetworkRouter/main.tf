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

resource "google_compute_router" "networkRouter" {
  name    = "${var.resourceName}-network-router"
  network = var.networkRouterNetwork
  description = var.networkRouterDescription
  
  dynamic "bgp" {
    for_each = var.networkRouterBgp != null ? [var.networkRouterBgp]: []
    content {
      asn = bgp.value["asn"]
      advertise_mode = bgp.value["advertise_mode"]
      advertised_groups = bgp.value["advertised_groups"]
      
      dynamic "advertised_ip_ranges" {
        for_each = bgp.value["advertised_ip_ranges"] != null ? [bgp.value["advertised_ip_ranges"]]: []
        content {
          range = advertised_ip_ranges.value["range"]
          description = advertised_ip_ranges.value["description"]
        }
      }

      keepalive_interval = bgp.value["keepalive_interval"]
      identifier_range = bgp.value["identifier_range"]

    }
  }

  encrypted_interconnect_router = var.networkRouterEncryptedInterconnectRouter
  region  = var.gcpRegion
  project = var.gcpProjectId
}