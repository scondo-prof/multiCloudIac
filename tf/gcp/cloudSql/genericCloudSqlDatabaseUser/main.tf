provider "google" {
  project = var.projectId
  region  = var.region
}

resource "google_sql_user" "databaseUser" {
  instance = var.databseInstance
  name = "${var.resourceName}-database-user"
  password = var.userPassword
  type = var.userType
  deletion_policy = var.userDeletionPolicy
  project = var.projectId
}