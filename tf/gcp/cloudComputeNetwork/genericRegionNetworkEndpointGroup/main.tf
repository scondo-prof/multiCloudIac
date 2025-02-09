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

resource "google_compute_region_network_endpoint_group" "rneg" {
  name   = "${var.resourceName}-rneg"
  region = var.gcpRegion

  description           = var.rnegDescription
  network_endpoint_type = var.rnegNetworkEndpointType
  psc_target_service    = var.rnegPscTargetService
  network               = var.rnegNetwork
  subnetwork            = var.rnegSubnetwork

  dynamic "cloud_run" {
    for_each = var.rnegCloudRun != null ? [var.rnegCloudRun] : []
    content {
      service  = cloud_run.value["service"]
      tag      = cloud_run.value["tag"]
      url_mask = cloud_run.value["url_mask"]
    }
  }

  dynamic "app_engine" {
    for_each = var.rnegAppEngine != null ? [var.rnegAppEngine] : []
    content {
      service  = app_engine.value["service"]
      version  = app_engine.value["version"]
      url_mask = app_engine.value["url_mask"]
    }
  }

  dynamic "cloud_function" {
    for_each = var.rnegCloudFunction != null ? [var.rnegCloudFunction] : []
    content {
      function = cloud_function.value["function"]
      url_mask = cloud_function.value["url_mask"]
    }
  }

  project = var.gcpProjectId
}