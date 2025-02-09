provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

resource "google_cloudbuildv2_repository" "repoository" {
  name = "${var.resourceName}-repository"
  location = var.gcpRegion
  parent_connection = var.repositoryParentConnection
  remote_uri = var.repositoryRemoteUri
}