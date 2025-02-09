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


resource "google_compute_forwarding_rule" "forwardingRule" {
  name                   = "${var.resourceName}-forwarding-rule"
  is_mirroring_collector = var.forwardingRuleIsMirroringCollector
  description            = var.forwardingRuleDescription
  ip_address             = var.forwardingRuleIpAddress
  ip_protocol            = var.forwardingRuleIpProtocol
  backend_service        = var.forwardingRuleBackendService
  load_balancing_scheme  = var.forwardingRuleLoadBalancingScheme
  network                = var.forwardingRuleNetwork
  port_range             = var.forwardingRulePortRange
  ports                  = var.forwardingRulePorts
  subnetwork             = var.forwardingRuleSubnetwork
  target                 = var.forwardingRuleTarget
  allow_global_access    = var.forwardingRuleAllowGlobalAccess
  labels = merge({
    "project" : var.projectName
    "deployed-date" : var.deployedDate
    "created-by" : var.createdBy
  }, var.additionalLabels)
  all_ports    = var.forwardingRuleAllPorts
  network_tier = var.forwardingRuleNetworkTier

  dynamic "service_directory_registrations" {
    for_each = var.forwardingRuleServiceDirectoryRegistrations != null ? [var.forwardingRuleServiceDirectoryRegistrations] : []
    content {
      namespace = service_directory_registrations.value["namespace"]
      service   = service_directory_registrations.value["service"]
    }
  }

  service_label           = var.forwardingRuleServiceLabel
  source_ip_ranges        = var.forwardingRuleSourceIpRanges
  allow_psc_global_access = var.forwardingRuleAllowPscGlobalAccess
  no_automate_dns_zone    = var.forwardingRuleNoAutomateDnsZone
  ip_version              = var.forwardingRuleIpVersion
  region                  = var.gcpRegion
  project                 = var.gcpProjectId
  recreate_closed_psc     = var.forwardingRuleRecreateClosedPsc
}