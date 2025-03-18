provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_sql_database_instance" "databaseInstance" {
  region           = var.gcpRegion

  dynamic "settings" {
    for_each = var.databaseInstance != null ? [var.databaseInstance]: []
    content {
      
    }
  }

  database_version = var.databaseInstance
  name = "${var.resourceName}-db"
  maintenance_version = var.databaseInstance
  master_instance_name = var.databaseInstance
  project = var.gcpProjectId
  
  dynamic "replica_configuration" {
    for_each = var.databaseInstance != null ? [var.databaseInstance]: []
    content {
      
    }
  }

  root_password = var.databaseInstance
  encryption_key_name = var.databaseInstance
  deletion_protection = var.databaseInstance
  
  dynamic "restore_backup_context" {
    for_each = var.databaseInstance != null ? [var.databaseInstance]: []
    content {
      
    }
  }

  dynamic "clone" {
    for_each = var.databaseInstance != null ? [var.databaseInstance]: []
    content {
      
    }
  }
}
