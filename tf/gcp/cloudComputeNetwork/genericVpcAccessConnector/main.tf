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
  name           = "${var.resourceName}-vac"
  network        = var.vpcAccessConnectorObject[""]#ar.vpcAccessConnectorNetwork
  ip_cidr_range  = var.vpcAccessConnectorObject[""]#var.vpcAccessConnectorIpCidrRange
  machine_type   = var.vpcAccessConnectorObject[""]#var.vpcAccessConnectorMachineType
  min_throughput = var.vpcAccessConnectorObject[""]#var.vpcAccessConnectorMinThroughput
  min_instances  = var.vpcAccessConnectorObject[""]#var.vpcAccessConnectorMinInstances
  max_instances  = var.vpcAccessConnectorObject[""]#var.vpcAccessConnectorMaxInstances
  max_throughput = var.vpcAccessConnectorObject[""]#var.vpcAccessConnectorMaxThroughput
  dynamic "subnet" {
    for_each = var.var.vpcAccessConnectorObject[""] != null ? [var.vpcAccessConnectorObject[""]] : []#var.vpcAccessConnectorSubnet
    content {
      name       = subnet.value["name"]
      project_id = subnet.value["project_id"]
    }
  }

  region  = var.gcpRegion
  project = var.gcpProjectId
}