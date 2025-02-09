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


resource "google_compute_router_nat" "nat" {
  name                               = "${var.resourceName}-nat"
  router                             = var.natRouterName
  region                             = var.region
  project = var.projectId
  nat_ip_allocate_option             = var.natIpAllocateOption
  source_subnetwork_ip_ranges_to_nat = var.natSourceSubnetworkIpRangesToNat
  nat_ips = var.natIps
  min_ports_per_vm = var.natMinPortsPerVm
  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}