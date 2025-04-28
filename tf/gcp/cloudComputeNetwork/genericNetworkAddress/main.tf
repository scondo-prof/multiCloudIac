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

resource "google_compute_address" "networkAddress" {
  name         = "${var.networkAddressObject["name"]}-network-address"
  address      = var.networkAddressObject["address"]
  address_type = var.networkAddressObject["address_type"]
  description  = var.networkAddressObject["description"]
  purpose      = var.networkAddressObject["purpose"]
  network_tier = var.networkAddressObject["network_tier"]
  subnetwork   = var.networkAddressObject["subnetwork"]
  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)
  network            = var.networkAddressObject[""]#var.networkAddressNetwork
  prefix_length      = var.networkAddressObject[""]#var.networkAddressPrefixLength
  ip_version         = var.networkAddressObject[""]#var.networkAddressIpVersion
  ipv6_endpoint_type = var.networkAddressObject[""]#var.networkAddressIpv6EndpoingType
  region             = var.gcpRegion
  project            = var.gcpProjectId
}