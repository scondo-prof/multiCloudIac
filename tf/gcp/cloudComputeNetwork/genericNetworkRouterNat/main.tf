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
  router                             = var.natRouterName
  nat_ip_allocate_option             = var.natIpAllocateOption
  initial_nat_ips = var.nat
  nat_ips                            = var.natIps
  drain_nat_ips = var.nat

  dynamic "subnetwork" {
    for_each = var.nat != null ? [var.nat]: []
    content {
      
    }
  }

  min_ports_per_vm                   = var.natMinPortsPerVm
  max_ports_per_vm = var.nat
  enable_dynamic_port_allocation = var.nat
  udp_idle_timeout_sec = var.nat
  icmp_idle_timeout_sec = var.nat
  tcp_established_idle_timeout_sec = var.nat
  tcp_transitory_idle_timeout_sec = var.nat
  tcp_time_wait_timeout_sec = var.nat

  dynamic "log_config" {
    for_each = var.nat != null ? [var.nat]: []
    content {
      
    }
  }

  endpoint_types = var.nat

  dynamic "rules" {
    for_each = var.nat != null ? [var.nat]: []
    content {
      
    }
  }

  enable_endpoint_independent_mapping = var.nat
  auto_network_tier = var.nat
  region                             = var.gcpRegion
  project                            = var.gcpProjectId
  source_subnetwork_ip_ranges_to_nat = var.natSourceSubnetworkIpRangesToNat
}