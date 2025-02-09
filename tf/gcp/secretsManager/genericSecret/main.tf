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
  region  = var.gcpRegion
}

resource "google_secret_manager_secret" "secret" {
  replication {
    auto {}
  }
  secret_id = "${var.resourceName}-secret"
  labels = {
    "project" : var.projectName
    "deployed-date" : var.deployedDate
    "created-by" : var.createdBy
  }
  project = var.projectId
}