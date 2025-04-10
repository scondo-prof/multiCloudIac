provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_sql_database" "database" {
  name            = "${var.resourceName}-database"
  instance        = var.databaseInstance
  charset         = var.databaseCharset
  collation       = var.databaseCollation
  project         = var.gcpProjectId
  deletion_policy = var.databaseDeletionPolicy
}
