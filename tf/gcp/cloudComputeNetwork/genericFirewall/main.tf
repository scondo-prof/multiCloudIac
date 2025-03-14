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
    for_each = var.firewallDeny != null ? [var.firewallDeny]: []
    content {
      protocol = allow.value["protocl"]
      ports    = allow.value["ports"]
    }
  }

  description = var.firewallDescription
  destination_ranges = var.firewallDestinationRanges
  direction = var.firewallDirection
  disabled = var.firewallDisabled

  dynamic "log_config" {
    for_each = var.firewallLogConfig != null ? [var.firewallLogConfig]: []
    content {
      metadata = log_config.value["metadata"]
    }
  }

  priority = var.firewallPriority
  source_ranges = var.firewallSourceRanges
  source_service_accounts = var.firewallSourceServiceAccounts
  source_tags = var.firewallSourceTags
  target_service_accounts = var.firewallTargetServiceAccounts
  target_tags = var.firewallTargetTags
  project = var.gcpProjectId
}