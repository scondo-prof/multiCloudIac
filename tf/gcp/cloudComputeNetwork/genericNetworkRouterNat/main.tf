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
  source_subnetwork_ip_ranges_to_nat = var.natObject[""] #var.natSourceSubnetworkIpRangesToNat
  router                             = var.natObject[""] #var.natRouterName
  nat_ip_allocate_option             = var.natObject[""] #var.natIpAllocateOption
  initial_nat_ips                    = var.natObject[""] #var.natInitialNatIps
  nat_ips                            = var.natObject[""] #var.natIps
  drain_nat_ips                      = var.natObject[""] #var.natDrainNatIps

  dynamic "subnetwork" {
    for_each = var.natObject[""] != null ? [var.natObject[""]] : [] #var.natSubnetwork
    content {
      name                     = subnetwork.value["name"]
      source_ip_ranges_to_nat  = subnetwork.value["source_ip_ranges_to_nat"]
      secondary_ip_range_names = subnetwork.value["secondary_ip_range_names"]
    }
  }

  min_ports_per_vm                 = var.natObject[""] #var.natMinPortsPerVm
  max_ports_per_vm                 = var.natObject[""] #var.natMaxPortsPerVm
  enable_dynamic_port_allocation   = var.natObject[""] #var.natEnableDynamicPortAllocation
  udp_idle_timeout_sec             = var.natObject[""] #var.natUdpIdleTimeoutSec
  icmp_idle_timeout_sec            = var.natObject[""] #var.natIcmpIdleTimeoutSec
  tcp_established_idle_timeout_sec = var.natObject[""] #var.natTcpEstablishedIdleTimeoutSec
  tcp_transitory_idle_timeout_sec  = var.natObject[""] #var.natTcpTransitoryIdleTimeoutSec
  tcp_time_wait_timeout_sec        = var.natObject[""] #var.natTcpTimeWaitTimeoutSec

  dynamic "log_config" {
    for_each = var.natObject[""] != null ? [var.natObject[""]] : [] #var.natLogConfig
    content {
      enable = log_config.value["enable"]
      filter = log_config.value["filter"]
    }
  }

  endpoint_types = var.natObject[""] #var.natEndpointTypes

  dynamic "rules" {
    for_each = var.natObject[""] != null ? [var.natObject[""]] : [] #var.natRules
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

  enable_endpoint_independent_mapping = var.natObject[""] #var.natEnableEndpointIndependentMapping
  auto_network_tier                   = var.natObject[""] #var.natAutoNetworkTier
  region                              = var.gcpRegion
  project                             = var.gcpProjectId
}