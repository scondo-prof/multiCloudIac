provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_project_iam_binding" "iamBinding" {
  project = var.gcpProjectId
  role    = var.iamBindingRole

  members = var.iamBindingMembers
}