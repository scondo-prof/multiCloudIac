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

resource "google_compute_subnetwork" "subnetwork" {
  count                   = length(var.subnetworkObjects)
  name                    = "${var.subnetworkObjects[count.index]["name"]}-subnetwork"
  network                 = var.subnetworkNetwork
  description             = var.subnetworkObjects[count.index]["description"]
  ip_cidr_range           = var.subnetworkObjects[count.index]["ip_cidr_range"]
  reserved_internal_range = var.subnetworkObjects[count.index]["reserved_internal_range"]
  purpose                 = var.subnetworkObjects[count.index]["purpose"]
  role                    = var.subnetworkObjects[count.index]["role"]

  dynamic "secondary_ip_range" {
    for_each = var.subnetworkObjects[count.index]["secondary_ip_range"] != null ? [var.subnetworkObjects[count.index]["secondary_ip_range"]] : []
    content {
      range_name              = secondary_ip_range.value["range_name"]
      ip_cidr_range           = secondary_ip_range.value["ip_cidr_range"]
      reserved_internal_range = secondary_ip_range.value["reserved_internal_range"]
    }
  }

  private_ip_google_access   = var.subnetworkObjects[count.index]["private_ip_google_access"]
  private_ipv6_google_access = var.subnetworkObjects[count.index]["private_ipv6_google_access"]
  region                     = var.gcpRegion

  dynamic "log_config" {
    for_each = var.subnetworkObjects[count.index]["log_config"] != null ? [var.subnetworkObjects[count.index]["log_config"]] : []
    content {
      aggregation_interval = log_config.value["aggregation_interval"]
      flow_sampling        = log_config.value["flow_sampling"]
      metadata             = log_config.value["metadata"]
      metadata_fields      = log_config.value["metadata_fields"]
      filter_expr          = log_config.value["filter_expr"]
    }
  }

  stack_type                       = var.subnetworkObjects[count.index]["stack_type"]
  ipv6_access_type                 = var.subnetworkObjects[count.index]["ipv6_access_type"]
  external_ipv6_prefix             = var.subnetworkObjects[count.index]["external_ipv6_prefix"]
  project                          = var.gcpProjectId
  send_secondary_ip_range_if_empty = var.subnetworkObjects[count.index]["send_secondary_ip_range_if_empty"]
}