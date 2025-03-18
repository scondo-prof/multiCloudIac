variable "gcpProjectId"{
    type = string
}

variable "gcpRegion" {
  type = string
  default = "us-east1"
}

variable "resourceName"{
    type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "projectName" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = null
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#argument-reference

variable "databaseInstanceSettings" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#tier-1
    tier = string
    edition = optional(string, null)
    activation_policy = optional(string, null)
    availability_type = optional(string, null)
    collation = optional(string, null)
    connector_enforcement = optional(string, null)
    deletion_protection_enabled = optional(bool, null)
    enable_google_ml_integration = optional(bool, null)
    enable_dataplex_integration = optional(bool, null)
    disk_autoresize = optional(bool, null)
    disk_autoresize_limit = optional(number, null)
    disk_size = optional(number, null)
    pricing_plan = optional(string, null)
    time_zone = optional(string, null)

    advanced_machine_features = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#threads_per_core-1
      threads_per_core = optional(number, null)
    }), null)

    database_flags = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#name-9
      name = string
      value = string
    }), null)

    active_directory_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#domain-1
      domain = string
    }), null)

    data_cache_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#data_cache_enabled-1
      data_cache_enabled = optional(bool, null)
    }), null)

    deny_maintenance_period = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#end_date-1
      end_date = string
      start_date = string
      time = string
    }), null)

    sql_server_audit_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#bucket-1
      bucket = optional(string, null)
      upload_interval = optional(string, null)
      retention_interval = optional(string, null)
    }), null)    

    backup_configuration = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#binary_log_enabled-1
      binary_log_enabled = optional(bool, null)
      enabled = optional(bool, null)
      start_time = optional(string, null)
      point_in_time_recovery_enabled = optional(string, null)
      location = optional(string, null)
      transaction_log_retention_days = optional(number, null)

      backup_configuration = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#retained_backups-1
        retained_backups = optional(number, null)
        retention_unit = optional(string, null)
      }), null)
    }), null)

    ip_configuration = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#ipv4_enabled-1
      ipv4_enabled = optional(bool, null)
      private_network = optional(string, null)
      ssl_mode = optional(string, null)
      server_ca_mode = optional(string, null)
      allocated_ip_range = optional(string, null)
      enable_private_path_for_google_cloud_services = optional(bool, null)

      authorized_networks = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#expiration_time-1
        expiration_time = optional(string, null)
        name = optional(string, null)
        value = string
      }), null)

      psc_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#psc_enabled-1
        psc_enabled = optional(bool, null)
        allowed_consumer_projects = optional(list(string), null)
      }), null)
    }), null)

    location_preference = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#follow_gae_application-1
      follow_gae_application = optional(string, null)
      zone = optional(string, null)
      secondary_zone = optional(string, null)
    }), null)

    maintenance_window = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#day-1
      day = optional(number, null)
      hour = optional(number, null)
      update_track = optional(string, null)
    }), null)

    insights_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#query_insights_enabled-1
      query_insights_enabled = optional(bool, null)
      query_string_length = optional(number, null)
      record_application_tags = optional(bool, null)
      record_client_address = optional(bool, null)
      query_plans_per_minute = optional(number, null)
    }), null)

    password_validation_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#min_length-1
      min_length = optional(number, null)
      complexity = optional(bool, null)
      reuse_interval = optional(number, null)
      disallow_username_substring = optional(bool, null)
      password_change_interval = optional(number, null)
      enable_password_policy = optional(bool, null)
    }), null)
  })
}