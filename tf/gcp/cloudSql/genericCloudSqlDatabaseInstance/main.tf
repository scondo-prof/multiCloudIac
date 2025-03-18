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
        for_each = settings.value["advanced_machine_features"] != null ? [settings.value["advanced_machine_features"]]: []
        content {
          threads_per_core = advanced_machine_features.value["threads_per_core"]
        }
      }

      dynamic "database_flags" {
        for_each = settings.value["database_flags"] != null ? [settings.value["database_flags"]]: []
        content {
          name = database_flags.value["name"]
          value = database_flags.value["value"]
        }
      }

      dynamic "active_directory_config" {
        for_each = settings.value["active_directory_config"] != null ? [settings.value["active_directory_config"]]: []
        content {
          domain = active_directory_config.value["domain"]
        }
      }

      dynamic "data_cache_config" {
        for_each = settings.value["data_cache_config"] != null ? [settings.value["data_cache_config"]]: []
        content {
          data_cache_enabled = data_cache_config.value["data_cache_enabled"]
        }
      }
      
      dynamic "deny_maintenance_period" {
        for_each = settings.value["deny_maintenance_period"] != null ? [settings.value["deny_maintenance_period"]]: []
        content {
          end_date = deny_maintenance_period.value["end_date"]
          start_date = deny_maintenance_period.value["start_date"]
          time = deny_maintenance_period.value["time"]
        }
      }

      dynamic "sql_server_audit_config" {
        for_each = settings.value["sql_server_audit_config"] != null ? [settings.value["sql_server_audit_config"]]: []
        content {
          bucket = sql_server_audit_config.value["bucket"]
          upload_interval = sql_server_audit_config.value["upload_interval"]
          retention_interval = sql_server_audit_config.value["retention_interval"]
        }
      }

      dynamic "backup_configuration" {
        for_each = settings.value["backup_configuration"] != null ? [settings.value["backup_configuration"]]: []
        content {
          binary_log_enabled = backup_configuration.value["binary_log_enabled"]
          enabled = backup_configuration.value["enabled"]
          start_time = backup_configuration.value["start_time"]
          point_in_time_recovery_enabled = backup_configuration.value["point_in_time_recovery_enabled"]
          location = backup_configuration.value["location"]
          transaction_log_retention_days = backup_configuration.value["transaction_log_retention_days"]
          
          dynamic "backup_retention_settings" {
            for_each = backup_configuration.value["backup_retention_settings"] != null ? [backup_configuration.value["backup_retention_settings"]]: []
            content {
              retained_backups = backup_retention_settings.value["retained_backups"]
              retention_unit = backup_retention_settings.value["retention_unit"]
            }
          }
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
