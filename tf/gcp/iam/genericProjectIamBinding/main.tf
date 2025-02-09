provider "google" {
  project = var.projectId
  region  = var.region
}

resource "google_project_iam_binding" "iamBinding" {
  project = var.projectId
  role    = var.iamBindingRole

  members = var.iamBindingMembers
}