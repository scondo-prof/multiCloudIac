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

resource "google_secret_manager_secret_version" "secretVersion" {
  count = length(var.secretVersionObjects)
  secret = var.secretVersionSecret
  enabled = var.secretVersionObjects[count.index]["enabled"]
  secret_data = var.secretVersionObjects[count.index]["secret_data"]
  deletion_policy = var.secretVersionObjects[count.index]["deletion_policy"]
  is_secret_data_base64 = var.secretVersionObjects[count.index]["is_secret_data_base64"]
}