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
  name                               = "${var.resourceName}-nat"
  source_subnetwork_ip_ranges_to_nat = var.natSourceSubnetworkIpRangesToNat
  router                             = var.natRouterName
  nat_ip_allocate_option             = var.natIpAllocateOption
  initial_nat_ips                    = var.natInitialNatIps
  nat_ips                            = var.natIps
  drain_nat_ips                      = var.natDrainNatIps

  dynamic "subnetwork" {
    for_each = var.natSubnetwork != null ? [var.natSubnetwork] : []
    content {
      name                     = subnetwork.value["name"]
      source_ip_ranges_to_nat  = subnetwork.value["source_ip_ranges_to_nat"]
      secondary_ip_range_names = subnetwork.value["secondary_ip_range_names"]
    }
  }

  min_ports_per_vm                 = var.natMinPortsPerVm
  max_ports_per_vm                 = var.natMaxPortsPerVm
  enable_dynamic_port_allocation   = var.natEnableDynamicPortAllocation
  udp_idle_timeout_sec             = var.natUdpIdleTimeoutSec
  icmp_idle_timeout_sec            = var.natIcmpIdleTimeoutSec
  tcp_established_idle_timeout_sec = var.natTcpEstablishedIdleTimeoutSec
  tcp_transitory_idle_timeout_sec  = var.natTcpTransitoryIdleTimeoutSec
  tcp_time_wait_timeout_sec        = var.natTcpTimeWaitTimeoutSec

  dynamic "log_config" {
    for_each = var.natLogConfig != null ? [var.natLogConfig] : []
    content {
      enable = log_config.value["enable"]
      filter = log_config.value["filter"]
    }
  }

  endpoint_types = var.natEndpointTypes

  dynamic "rules" {
    for_each = var.natRules != null ? [var.natRules] : []
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

  enable_endpoint_independent_mapping = var.natEnableEndpointIndependentMapping
  auto_network_tier                   = var.natAutoNetworkTier
  region                              = var.gcpRegion
  project                             = var.gcpProjectId
}