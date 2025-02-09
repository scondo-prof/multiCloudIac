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

resource "google_secret_manager_secret_version" "secretVersion" {
  secret_data     = var.secretVersionSecretData
  secret          = var.secretVersionSecret
  enabled         = var.secretVersionEnabled
  deletion_policy = var.secretVersionDeletionPolicy
}