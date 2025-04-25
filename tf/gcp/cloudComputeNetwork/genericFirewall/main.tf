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
  count   = length(var.firewallObjects)
  name    = "${var.firewallObjects[count.index]["name"]}-firewall"
  network = var.firewallObjects[count.index]["network"]

  dynamic "allow" {
    for_each = var.firewallObjects[count.index]["allow"] != null ? [var.firewallObjects[count.index]["allow"]] : []
    content {
      protocol = allow.value["protocl"]
      ports    = allow.value["ports"]
    }
  }

  dynamic "deny" {
    for_each = var.firewallObjects[count.index]["deny"] != null ? [var.firewallObjects[count.index]["deny"]] : []
    content {
      protocol = allow.value["protocl"]
      ports    = allow.value["ports"]
    }
  }

  description        = var.firewallObjects[count.index]["description"]
  destination_ranges = var.firewallObjects[count.index]["destination_ranges"]
  direction          = var.firewallObjects[count.index]["direction"]
  disabled           = var.firewallObjects[count.index]["disabled"]

  dynamic "log_config" {
    for_each = var.firewallObjects[count.index][""] != null ? [var.firewallObjects[count.index][""]] : [] #var.firewallLogConfig
    content {
      metadata = log_config.value["metadata"]
    }
  }

  priority                = var.firewallObjects[count.index][""] #var.firewallPriority
  source_ranges           = var.firewallObjects[count.index][""] #var.firewallSourceRanges
  source_service_accounts = var.firewallObjects[count.index][""] #var.firewallSourceServiceAccounts
  source_tags             = var.firewallObjects[count.index][""] #var.firewallSourceTags
  target_service_accounts = var.firewallObjects[count.index][""] #var.firewallTargetServiceAccounts
  target_tags             = var.firewallObjects[count.index][""] #var.firewallTargetTags
  project                 = var.gcpProjectId
}