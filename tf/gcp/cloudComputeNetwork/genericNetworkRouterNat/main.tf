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


resource "google_compute_router_nat" "nat" {
  name                               = "${var.natObject["name"]}-nat"
  source_subnetwork_ip_ranges_to_nat = var.natObject["source_subnetwork_ip_ranges_to_nat"]
  router                             = var.natObject["router"]
  nat_ip_allocate_option             = var.natObject["nat_ip_allocate_option"]
  initial_nat_ips                    = var.natObject["initial_nat_ips"]
  nat_ips                            = var.natObject["nat_ips"]
  drain_nat_ips                      = var.natObject["drain_nat_ips"]

  dynamic "subnetwork" {
    for_each = var.natObject["subnetwork"] != null ? [var.natObject["subnetwork"]] : []
    content {
      name                     = subnetwork.value["name"]
      source_ip_ranges_to_nat  = subnetwork.value["source_ip_ranges_to_nat"]
      secondary_ip_range_names = subnetwork.value["secondary_ip_range_names"]
    }
  }

  min_ports_per_vm                 = var.natObject["min_ports_per_vm"]
  max_ports_per_vm                 = var.natObject["max_ports_per_vm"]
  enable_dynamic_port_allocation   = var.natObject["enable_dynamic_port_allocation"]
  udp_idle_timeout_sec             = var.natObject["udp_idle_timeout_sec"]
  icmp_idle_timeout_sec            = var.natObject["icmp_idle_timeout_sec"]
  tcp_established_idle_timeout_sec = var.natObject["tcp_established_idle_timeout_sec"]
  tcp_transitory_idle_timeout_sec  = var.natObject["tcp_transitory_idle_timeout_sec"]
  tcp_time_wait_timeout_sec        = var.natObject["tcp_time_wait_timeout_sec"]

  dynamic "log_config" {
    for_each = var.natObject["log_config"] != null ? [var.natObject["log_config"]] : []
    content {
      enable = log_config.value["enable"]
      filter = log_config.value["filter"]
    }
  }

  endpoint_types = var.natObject["endpoint_types"]

  dynamic "rules" {
    for_each = var.natObject["rules"] != null ? [var.natObject["rules"]] : []
    content {
      rule_number = rules.value["rule_number"]
      description = rules.value["description"]
      match       = rules.value["match"]

      dynamic "action" {
        for_each = rules.value["action"] != null ? [rules.value["action"]] : []
        content {
          source_nat_active_ips = action.value["source_nat_active_ips"]
          source_nat_drain_ips  = action.value["source_nat_drain_ips"]
        }
      }
    }
  }

  enable_endpoint_independent_mapping = var.natObject["enable_endpoint_independent_mapping"]
  auto_network_tier                   = var.natObject["auto_network_tier"]
  region                              = var.gcpRegion
  project                             = var.gcpProjectId
}