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

data "google_site_verification_token" "token" {
  type                = var.tokenType
  identifier          = var.tokenIdentifier
  verification_method = var.tokenVerificationMethod
}