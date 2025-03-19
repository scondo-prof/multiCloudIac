variable "gcpProjectId"{
    type = string
}

variable "gcpRegion" {
  type = string
  default = "us-east1"
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

  default = null
}

variable "databaseInstanceDatabaseVersion" {
  type = string
  validation {
    condition = contains([
    "MYSQL_5_6",
    "MYSQL_5_7",
    "MYSQL_8_0",
    "MYSQL_8_4",
    "POSTGRES_9_6",
    "POSTGRES_10",
    "POSTGRES_11",
    "POSTGRES_12",
    "POSTGRES_13",
    "POSTGRES_14",
    "POSTGRES_15",
    "POSTGRES_16",
    "POSTGRES_17",
    "SQLSERVER_2017_STANDARD",
    "SQLSERVER_2017_ENTERPRISE",
    "SQLSERVER_2017_EXPRESS",
    "SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD",
    "SQLSERVER_2019_ENTERPRISE",
    "SQLSERVER_2019_EXPRESS",
    "SQLSERVER_2019_WEB"
], var.databaseInstanceDatabaseVersion)
    error_message = "Valid inputs for | variable: var.databaseInstanceDatabaseVersion | are: MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD, SQLSERVER_2019_ENTERPRISE, SQLSERVER_2019_EXPRESS, SQLSERVER_2019_WEB"
  }
}

variable "databseInstanceName" {
  type = string
  default = null
}

variable "databaseInstanceMaintenanceVersion" {
  type = string
  default = null
}

variable "databaseInstanceMasterInstanceName" {
  type = string
  default = null
}

variable "databaseInstanceReplicaConfiguration" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#ca_certificate-1
    ca_certificate = optional(string, null)
    client_certificate = optional(string, null)
    client_key = optional(string, null)
    connect_retry_interval = optional(number, null)
    dump_file_path = optional(string, null)
    failover_target = optional(string, null)
    master_heartbeat_period = optional(number, null)
    password = optional(string, null)
    ssl_cipher = optional(string, null)
    username = optional(string, null)
    verify_server_certificate = optional(bool, null)
  })

  default = null
}

variable "databaseInstanceRootPassword" {
  type = string
  default = null
}

variable "databaseInstanceEncryptionKeyName" {
  type = string
  default = null
}

variable "databaseInstanceDeletionProtection" {
  type = bool
  default = null
}

variable "databaseInstanceRestoreBackupContext" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#backup_run_id-1
    backup_run_id = string
    instance_id = optional(string, null)
    project = optional(string, null)
  })
  default = null
}

variable "databaseInstanceClone" {
  type = object({
    source_instance_name = string
    point_in_time = optional(string, null)
    preferred_zone = optional(string, null)
    database_names = optional(list(string), null)
    allocated_ip_range = optional(string, null)
  })
  default = null
}