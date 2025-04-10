provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_project_iam_custom_role" "role" {
  role_id     = "${var.roleId}Role"
  title       = "${var.resourceName}-role"
  permissions = var.rolePermissions
  project     = var.gcpProjectId
  stage       = var.roleStage
  description = var.roleDescription
}