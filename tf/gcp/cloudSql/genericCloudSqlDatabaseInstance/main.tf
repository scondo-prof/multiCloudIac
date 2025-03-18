provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_sql_database_instance" "databaseInstance" {
  region           = var.gcpRegion

  dynamic "settings" {
    for_each = var.databaseInstanceSettings != null ? [var.databaseInstanceSettings]: []
    content {
      tier = settings.value["tier"]
      edition = settings.value["edition"]

      user_labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)

      activation_policy = settings.value["activation_policy"]
      availability_type = settings.value["availability_type"]
      collation = settings.value["collation"]
      connector_enforcement = settings.value["connector_enforcement"]
      deletion_protection_enabled = settings.value["deletion_protection_enabled"]
      enable_google_ml_integration = settings.value["enable_google_ml_integration"]
      enable_dataplex_integration = settings.value["enable_dataplex_integration"]
      disk_autoresize = settings.value["disk_autoresize"]
      disk_autoresize_limit = settings.value["disk_autoresize_limit"]
      disk_size = settings.value["disk_size"]
      disk_type = settings.value["disk_type"]
      pricing_plan = settings.value["pricing_plan"]
      time_zone = settings.value["time_zone"]
      
      dynamic "advanced_machine_features" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "database_flags" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "active_directory_config" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "data_cache_config" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }
      
      dynamic "deny_maintenance_period" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "sql_server_audit_config" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "backup_configuration" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "ip_configuration" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "location_preference" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "maintenance_window" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "insights_config" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      dynamic "password_validation_policy" {
        for_each = settings.value[""] != null ? [settings.value[""]]: []
        content {
          
        }
      }

      
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
