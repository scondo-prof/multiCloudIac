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

resource "google_vpc_access_connector" "vpcAccessConnector" {
  name = "${var.resourceName}-vac"
  network = var.vpcAccessConnectorNetwork
  ip_cidr_range = var.vpcAccessConnectorIpCidrRange
  machine_type  = var.vpcAccessConnectorMachineType
  min_throughput = var.vpcAccessConnectorMinThroughput
  min_instances = var.vpcAccessConnectorMinInstances
  max_instances = var.vpcAccessConnectorMaxInstances
  max_throughput = var.vpcAccessConnectorMaxThroughput
  dynamic "subnet" {
    for_each = var.vpcAccessConnectorSubnet != null ? [var.vpcAccessConnectorSubnet]: []
    content {
      name = subnet.value["name"]
      project_id = subnet.value["project_id"]
    }
  }
  
  region        = var.gcpRegion
  project       = var.gcpProjectId
}