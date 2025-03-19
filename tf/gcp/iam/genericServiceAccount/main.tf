provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_service_account" "serviceAccount" {
  account_id                   = var.serviceAccountAccountId
  display_name                 = "${var.resourceName}-service-account"
  disabled                     = var.serviceAccountDisabled
  description = var.serviceAccountDescription
  project                      = var.gcpProjectId
  create_ignore_already_exists = var.serviceAccountCreateIgnoreAlreadyExists
}