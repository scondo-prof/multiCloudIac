provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

resource "google_service_account" "serviceAccount" {
  account_id                   = var.serviceAccountAccountId
  display_name                 = "${var.resourceName}-service-account"
  disabled                     = var.serviceAccountDisabled
  project                      = var.projectId
  create_ignore_already_exists = var.serviceAccountCreateIgnoreAlreadyExists
}