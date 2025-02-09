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


resource "google_compute_global_forwarding_rule" "gfr" {
  name        = "${var.resourceName}-gfr"
  target      = var.gfrTarget
  description = var.gfrDescription
  ip_address  = var.gfrIpAddress
  ip_protocol = var.gfrIpProtocol
  ip_version  = var.gfrIpVersion
  labels = merge({
    "project" : var.projectName
    "deployed-date" : var.deployedDate
    "created-by" : var.createdBy
  }, var.additionalLabels)
  load_balancing_scheme = var.gfrLoadBalancingScheme

  dynamic "metadata_filters" {
    for_each = var.gfrMetadataFilters != null ? [var.gfrMetadataFilters] : []
    content {
      filter_match_criteria = metadata_filters.value[""]

      dynamic "filter_labels" {
        for_each = metadata_filters.value["filter_labels"]
        content {
          name  = filter_labels.value["name"]
          value = filter_labels.value["value"]
        }
      }
    }
  }

  network    = var.gfrNetwork
  port_range = var.gfrPortRange
  subnetwork = var.gfrSubnetwork


  dynamic "service_directory_registrations" {
    for_each = var.gfrServiceDirectoryRegistrations != null ? [var.gfrServiceDirectoryRegistrations] : []
    content {
      namespace                = service_directory_registrations.value["namespace"]
      service_directory_region = service_directory_registrations.value["service_directory_region"]
    }
  }

  source_ip_ranges     = var.gfrSourceIpRanges
  no_automate_dns_zone = var.gfrNoAutomateDnsZone
  project              = var.gcpProjectId
}