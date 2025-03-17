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


resource "google_compute_global_address" "globalAddress" {
  name = "${var.resourceName}-ga"

  address     = var.globalAddressAddress
  description = var.globalAddressDescription
  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)
  ip_version    = var.globalAddressIpVersion
  prefix_length = var.globalAddressPrefixLength
  address_type  = var.globalAddressType
  purpose       = var.globalAddressPurpose
  network       = var.globalAddressNetwork
  project       = var.gcpProjectId
}