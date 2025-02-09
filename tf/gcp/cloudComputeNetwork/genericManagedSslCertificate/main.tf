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

resource "google_compute_managed_ssl_certificate" "msc" {
  description = var.mscDescription
  name        = "${var.resourceName}-msc"

  dynamic "managed" {
    for_each = var.mscManaged != null ? [var.mscManaged] : []
    content {
      domains = managed.value["domains"]
    }
  }

  type    = var.mscType
  project = var.gcpProjectId
}