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
  name         = "${var.resourceName}-network-address"
  address      = var.networkAddressAddress
  address_type = var.networkAddressType
  description  = var.networkAddressDescription
  purpose      = var.networkAddressPurpose
  network_tier = var.networkAddressNetworkTier
  subnetwork   = var.networkAddressSubnetwork
  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)
  network            = var.networkAddressNetwork
  prefix_length      = var.networkAddressPrefixLength
  ip_version         = var.networkAddressIpVersion
  ipv6_endpoint_type = var.networkAddressIpv6EndpoingType
  region             = var.gcpRegion
  project            = var.gcpProjectId
}