provider "google" {
  project = var.gcpProject
  region  = var.gcpRegion
}

resource "google_project_iam_binding" "iamBinding" {
  project = var.gcpProject
  role    = var.iamBindingRole

  members = var.iamBindingMembers
}