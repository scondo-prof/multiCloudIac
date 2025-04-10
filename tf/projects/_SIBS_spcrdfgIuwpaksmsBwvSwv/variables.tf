variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#argument-reference

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_topics
    name = string
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretExpireTime" {
  type    = string
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretTtl" {
  type    = string
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPRFG_SWSV_Secret_manager_SIBS_SPCRDFG_CRDPRFG_SWSV_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "SIBS_SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
  default   = []
}






variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CloudBuildTriggerServiceAccountsRoleId" {
  type = string
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage)
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SIBS_SPCRDFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SIBS_SPCRDFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "SIBS_SPCRDFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SIBS_SPCRDFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "SIBS_SPCRDFG_CloudBuildTriggerBucketName" {
  type = string
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber <= 65535
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances >= 0
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances <= 10
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory >= 1 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus)
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels" {
  type = list(string)
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity" {
  type = string
  validation {
    condition = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity))
    error_message = "Valid inputs for | variable: SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}


variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity" {
  type = string
  validation {
    condition = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity))
    error_message = "Valid inputs for | variable: SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}


variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity" {
  type = string
  validation {
    condition = var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity))
    error_message = "Valid inputs for | variable: SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SIBS_SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}





#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#argument-reference

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_topics
    name = string
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime" {
  type    = string
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl" {
  type    = string
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "SIBS_SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
  default   = []
}






variable "SIBS_SPCRDFG_CRDPFG_ServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SIBS_SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage)
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_ServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory >= 1 && var.SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SIBS_SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}


variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type = list(string)
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}


variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SIBS_SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}

#---


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user#argument-reference
variable "SIBS_IUWPAKSMS_UWP_IamUserPath" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_UWP_IamUserPermissionBoundary" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_UWP_IamUserForceDestroy" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "SIBS_IUWPAKSMS_UWP_IamPolicyDescription" {
  type    = string
  default = null
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyPath" {
  type    = string
  default = "/"
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "SIBS_IUWPAKSMS_UWP_IamPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}






#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key#argument-reference

variable "SIBS_IUWPAKSMS_IamAccessKeyPgpKey" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_IamAccessKeyStatus" {
  type = string
  validation {
    condition = var.SIBS_IUWPAKSMS_IamAccessKeyStatus == null || can(contains([
      "Active",
      "Inactive"
    ], var.SIBS_IUWPAKSMS_IamAccessKeyStatus))
    error_message = "Valid inputs for | variable: var.SIBS_IUWPAKSMS_IamAccessKeyStatus | are: Active, and Inactive"
  }
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "SIBS_IUWPAKSMS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SIBS_IUWPAKSMS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SIBS_IUWPAKSMS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "SIBS_IUWPAKSMS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SIBS_IUWPAKSMS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SIBS_IUWPAKSMS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}





#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference

variable "SIBS_BWV_S3BucketPrefix" {
  type    = string
  default = null
}

variable "SIBS_BWV_S3BucketForceDestroy" {
  type    = bool
  default = true
}

variable "SIBS_BWV_S3BucketObjectLockEnabled" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference
variable "SIBS_BWV_S3BucketVersioningConfigurationStatus" {
  type = string
  validation {
    condition = contains([
      "Enabled",
      "Suspended",
      "Disabled"
    ], var.SIBS_BWV_S3BucketVersioningConfigurationStatus)
    error_message = "Valid inputs for | variable: var.SIBS_BWV_S3BucketVersioningConfigurationStatus | are: Enabled, Suspended, or Disabled"
  }
}

variable "SIBS_BWV_S3BucketVersioningConfigurationMfaDelete" {
  type = string
  validation {
    condition = var.SIBS_BWV_S3BucketVersioningConfigurationMfaDelete == null || can(contains([
      "Enabled",
      "Disabled"
    ], var.SIBS_BWV_S3BucketVersioningConfigurationMfaDelete))
    error_message = "Valid inputs for | variable: var.SIBS_BWV_S3BucketVersioningConfigurationMfaDelete | are: Enabled, or Disabled"
  }
  default = null
}

variable "SIBS_BWV_S3BucketVersioningExpectedBucketOwner" {
  type    = string
  default = null
}

variable "SIBS_BWV_S3BucketVersioningMfa" {
  type    = string
  default = null
}




#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/SIBS_SWV_Staging_Secretsmanager_SIBS_SWV_Staging_Secret#argument-reference

variable "SIBS_SWV_Staging_SecretDescription" {
  type    = string
  default = null
}

variable "SIBS_SWV_Staging_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SIBS_SWV_Staging_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SIBS_SWV_Staging_SecretPolicy" {
  type    = string
  default = null
}

variable "SIBS_SWV_Staging_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SIBS_SWV_Staging_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SIBS_SWV_Staging_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "SIBS_SWV_Staging_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SIBS_SWV_Staging_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SIBS_SWV_Staging_SecretVersionStages" {
  type    = list(string)
  default = null
}



#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/SIBS_SWV_Prod_Secretsmanager_SIBS_SWV_Prod_Secret#argument-reference

variable "SIBS_SWV_Prod_SecretDescription" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretNamePrefix" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretPolicy" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "SIBS_SWV_Prod_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "SIBS_SWV_Prod_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "SIBS_SWV_Prod_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "SIBS_SWV_Prod_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "SIBS_SWV_Prod_SecretVersionStages" {
  type    = list(string)
  default = null
}