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

resource "google_compute_firewall" "firewall" {
  name = "${var.resourceName}-firewall"
  network = var.firewallNetwork
  dynamic "allow" {
    for_each = var.firewallRules
    content {
      protocol = allow.value.protocol
      ports    = allow.value.ports
    }
  }
  direction = var.firewallDirection
  disabled = var.firewallDisabled
  priority = var.firewallPriority
  source_ranges = var.firewallSourceRanges
  project = var.projectId
}