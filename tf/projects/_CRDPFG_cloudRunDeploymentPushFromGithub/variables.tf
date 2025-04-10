variable "gcpProjectId" {
  type    = string
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#argument-reference

variable "CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#nested_topics
    name = string
  })
  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretExpireTime" {
  type    = string
  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretTtl" {
  type    = string
  default = null
}

variable "CRDPFG_SWSV_Cloudbuild_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "CRDPFG_SWSV_Cloudbuild_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
}




#---

variable "CRDPFG_ServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "CRDPFG_ServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "CRDPFG_ServiceAccountRoleId" {
  type = string
}

variable "CRDPFG_ServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.CRDPFG_ServiceAccountRoleStage)
    error_message = "Variable CRDPFG_ServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "CRDPFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "CRDPFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "CRDPFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "CRDPFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "CRDPFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunConcurrentRequests >= 1 && var.CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable CRDPFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunRequestsTimeout >= 1 && var.CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable CRDPFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunPortNumber >= 1 && var.CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable CRDPFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable CRDPFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMaxInstances >= 1 && var.CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable CRDPFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunAmountOfMemory >= 1 && var.CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable CRDPFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable CRDPFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "CRDPFG_CloudRunLogsAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CRDPFG_CloudRunLogsAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "CRDPFG_CloudRunLogsAlertPolicySeverity" {
  type = string
  validation {
    condition = var.CRDPFG_CloudRunLogsAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CRDPFG_CloudRunLogsAlertPolicySeverity))
    error_message = "Valid inputs for | variable: CRDPFG_CloudRunLogsAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CRDPFG_CloudRunLogsAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

variable "CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}


variable "CRDPFG_CloudRunMemAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type = list(string)
}

variable "CRDPFG_CloudRunMemAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "CRDPFG_CloudRunMemAlertPolicySeverity" {
  type = string
  validation {
    condition = var.CRDPFG_CloudRunMemAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CRDPFG_CloudRunMemAlertPolicySeverity))
    error_message = "Valid inputs for | variable: CRDPFG_CloudRunMemAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CRDPFG_CloudRunMemAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}


variable "CRDPFG_CloudRunCpuAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CRDPFG_CloudRunCpuAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "CRDPFG_CloudRunCpuAlertPolicySeverity" {
  type = string
  validation {
    condition = var.CRDPFG_CloudRunCpuAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CRDPFG_CloudRunCpuAlertPolicySeverity))
    error_message = "Valid inputs for | variable: CRDPFG_CloudRunCpuAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CRDPFG_CloudRunCpuAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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