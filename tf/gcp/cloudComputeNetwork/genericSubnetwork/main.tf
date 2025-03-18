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

resource "google_compute_subnetwork" "subnetwork" {
  name          = "${var.resourceName}-subnetwork"
  network       = var.subnetworkNetwork
  description = var.subnetworkDescription
  ip_cidr_range = var.subnetworkIpCidrRange
  reserved_internal_range = var.subnetworkReservedInternalRange
  purpose = var.subnetworkPurpose
  role = var.subnetworkRole
  
  dynamic "secondary_ip_range" {
    for_each = var.subnetworkSecondaryIpRange != null ? [var.subnetworkSecondaryIpRange]: []
    content {
      range_name = secondary_ip_range.value["range_name"]
      ip_cidr_range = secondary_ip_range.value["ip_cidr_range"]
      reserved_internal_range = secondary_ip_range.value["reserved_internal_range"]
    }
  }

  private_ip_google_access = var.subnetworkPrivateIpGoogleAccess
  private_ipv6_google_access = var.subnetworkPrivateIpv6GoogleAccess
  region        = var.region
  
  dynamic "log_config" {
    for_each = var.subnetworkLogConfig != null ? [var.subnetworkLogConfig]: []
    content {
      aggregation_interval = log_config.value["aggregation_interval"]
      flow_sampling = log_config.value["flow_sampling"]
      metadata = log_config.value["metadata"]
      metadata_fields = log_config.value["metadata_fields"]
      filter_expr = log_config.value["filter_expr"]
    }
  }

  stack_type = var.subnetworkStackType
  ipv6_access_type = var.subnetworkIpv6AccessType
  external_ipv6_prefix = var.subnetworkExternalIpv6Prefix
  project       = var.projectId
  send_secondary_ip_range_if_empty = var.subnetworkSendSecondaryIpRangeIfEmpty
  
}