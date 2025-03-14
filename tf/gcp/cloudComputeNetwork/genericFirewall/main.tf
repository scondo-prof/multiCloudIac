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

resource "google_compute_firewall" "firewall" {
  name = "${var.resourceName}-firewall"
  network = var.firewallNetwork

  dynamic "allow" {
    for_each = var.firewallRulesAllow != null ? [var.firewallRulesAllow]: []
    content {
      protocol = allow.value["protocl"]
      ports    = allow.value["ports"]
    }
  }

  dynamic "deny" {
    for_each = var.firewall != null ? [var.firewall]: []
    content {
      
    }
  }

  description = var.firewall
  destination_ranges = var.firewall
  direction = var.firewallDirection
  disabled = var.firewallDisabled

  dynamic "log_config" {
    for_each = var.firewall != null ? [var.firewall]: []
    content {
      
    }
  }

  priority = var.firewallPriority
  source_ranges = var.firewallSourceRanges
  source_service_accounts = var.firewall
  source_tags = var.firewall
  target_service_accounts = var.firewall
  target_tags = var.firewall
  project = var.gcpProjectId
}