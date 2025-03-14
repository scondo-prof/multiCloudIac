terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.projectId
  region  = var.region
}

resource "google_vpc_access_connector" "vpcAccessConnector" {
  name = var.resourceName
  subnet {
    name       = var.vpcAccessConnectorSubnet
    project_id = var.projectId
  }
  machine_type  = var.vpcAccessConnectorMachineType
  min_instances = var.vpcAccessConnectorMinInstances
  max_instances = var.vpcAccessConnectorMaxInstances
  region        = var.region
  project       = var.projectId
}