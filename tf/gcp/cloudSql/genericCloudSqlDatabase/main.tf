provider "google" {
  project = var.projectId
  region  = var.region
}

resource "google_sql_database" "database" {
  name     = "${var.resourceName}-database"
  instance = var.databaseInstance
  project = var.projectId
  deletion_policy = var.deletionPolicy
}
