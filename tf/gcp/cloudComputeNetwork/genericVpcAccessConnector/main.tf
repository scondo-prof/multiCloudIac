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
  network        = var.vpcAccessConnectorObject["network"]
  ip_cidr_range  = var.vpcAccessConnectorObject["ip_cidr_range"]
  machine_type   = var.vpcAccessConnectorObject["machine_type"]
  min_throughput = var.vpcAccessConnectorObject["min_throughput"]
  min_instances  = var.vpcAccessConnectorObject["min_instances"]
  max_instances  = var.vpcAccessConnectorObject["max_instances"]
  max_throughput = var.vpcAccessConnectorObject["max_throughput"]
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