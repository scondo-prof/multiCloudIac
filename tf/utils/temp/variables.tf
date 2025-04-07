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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#argument-reference

variable "SPCRDFG_CRDPRFG_SWSV_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#nested_topics
    name = string
  })
  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretExpireTime" {
  type    = string
  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretTtl" {
  type    = string
  default = null
}

variable "SPCRDFG_CRDPRFG_SWSV_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPRFG_SWSV_Secret_manager_SPCRDFG_CRDPRFG_SWSV_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "SPCRDFG_CRDPRFG_SWSV_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
}






variable "SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleId" {
  type = string
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage)
    error_message = "Variable SPCRDFG_CRDPRFG_CloudBuildTriggerServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerYamlPath" {
  type = string
  default = "cloudbuild.yaml"
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerBranchName" {
  type = string
  default = "main"
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SPCRDFG_CRDPRFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunConcurrentRequests >= 1 && var.SPCRDFG_CRDPRFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SPCRDFG_CRDPRFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunRequestsTimeout >= 1 && var.SPCRDFG_CRDPRFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SPCRDFG_CRDPRFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunPortNumber >= 1 && var.SPCRDFG_CRDPRFG_CloudRunPortNumber <= 65535
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SPCRDFG_CRDPRFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMinInstances >= 0
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SPCRDFG_CRDPRFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMaxInstances >= 1 && var.SPCRDFG_CRDPRFG_CloudRunMaxInstances <= 10
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SPCRDFG_CRDPRFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SPCRDFG_CRDPRFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SPCRDFG_CRDPRFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunAmountOfMemory >= 1 && var.SPCRDFG_CRDPRFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus)
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPRFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPRFG_AlertPolicyNotificationChannels" {
  type = list(string)
}

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity" {
  type = string
  validation {
    condition = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity))
    error_message = "Valid inputs for | variable: SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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

variable "SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}


variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity" {
  type = string
  validation {
    condition = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity))
    error_message = "Valid inputs for | variable: SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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


variable "SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPRFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}


variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity" {
  type = string
  validation {
    condition = var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity))
    error_message = "Valid inputs for | variable: SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SPCRDFG_CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#argument-reference

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_topics
    name = string
  })
  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime" {
  type    = string
  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretTtl" {
  type    = string
  default = null
}

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_SPCRDFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "SPCRDFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
}






variable "SPCRDFG_CRDPFG_ServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "SPCRDFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPFG_ServiceAccountRoleId" {
  type = string
}

variable "SPCRDFG_CRDPFG_ServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.SPCRDFG_CRDPFG_ServiceAccountRoleStage)
    error_message = "Variable SPCRDFG_CRDPFG_ServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "SPCRDFG_CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunConcurrentRequests >= 1 && var.SPCRDFG_CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "SPCRDFG_CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunRequestsTimeout >= 1 && var.SPCRDFG_CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "SPCRDFG_CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunPortNumber >= 1 && var.SPCRDFG_CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "SPCRDFG_CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "SPCRDFG_CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMaxInstances >= 1 && var.SPCRDFG_CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "SPCRDFG_CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "SPCRDFG_CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "SPCRDFG_CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunAmountOfMemory >= 1 && var.SPCRDFG_CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.SPCRDFG_CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "SPCRDFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SPCRDFG_CRDPFG_CloudRunLogsAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SPCRDFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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

variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}


variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type = list(string)
}

variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SPCRDFG_CRDPFG_CloudRunMemAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SPCRDFG_CRDPFG_CloudRunMemAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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


variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}


variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity" {
  type = string
  validation {
    condition = var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity))
    error_message = "Valid inputs for | variable: SPCRDFG_CRDPFG_CloudRunCpuAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "SPCRDFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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
