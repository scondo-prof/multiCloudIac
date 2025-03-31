variable "gcpProjectId" {
  type    = string
  default = "p3-prod-aa94d"
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#argument-reference

variable "CRDPRFG_SWSV_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "CRDPRFG_SWSV_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "CRDPRFG_SWSV_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "CRDPRFG_SWSV_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "CRDPRFG_SWSV_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "CRDPRFG_SWSV_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#nested_topics
    name = string
  })
  default = null
}

variable "CRDPRFG_SWSV_SecretExpireTime" {
  type    = string
  default = null
}

variable "CRDPRFG_SWSV_SecretTtl" {
  type    = string
  default = null
}

variable "CRDPRFG_SWSV_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPRFG_SWSV_Secret_manager_CRDPRFG_SWSV_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "CRDPRFG_SWSV_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
}




#---
variable "resourceName" {
  type = string
}

variable "gcpRegion" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerServiceAccountAccountId" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "CRDPRFG_CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "CRDPRFG_CloudBuildTriggerServiceAccountRoleId" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.CRDPRFG_CloudBuildTriggerServiceAccountRoleStage)
    error_message = "Variable CRDPRFG_CloudBuildTriggerServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "CRDPRFG_CloudBuildTriggerYamlPath" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerBranchName" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "gcpProjectId" {
  type = string
}

variable "CRDPRFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "CRDPRFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunConcurrentRequests >= 1 && var.CRDPRFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable CRDPRFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "CRDPRFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunRequestsTimeout >= 1 && var.CRDPRFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable CRDPRFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "CRDPRFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunPortNumber >= 1 && var.CRDPRFG_CloudRunPortNumber <= 65535
    error_message = "Variable CRDPRFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "CRDPRFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunMinInstances >= 0
    error_message = "Variable CRDPRFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "CRDPRFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunMaxInstances >= 1 && var.CRDPRFG_CloudRunMaxInstances <= 10
    error_message = "Variable CRDPRFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "CRDPRFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "CRDPRFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "CRDPRFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.CRDPRFG_CloudRunAmountOfMemory >= 1 && var.CRDPRFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable CRDPRFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPRFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.CRDPRFG_CloudRunNumberOfVcpus)
    error_message = "Variable CRDPRFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CRDPRFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

#---
variable "gcpProjectId" {
  type    = string
  default = "p3-prod-aa94d"
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "CRDPRFG_AlertPolicyCloudRunAppLogsEnabled" {
  type    = bool
  default = true
}

variable "CRDPRFG_AlertPolicyCloudRunAppLogsNotificationChannels" {
  type    = list(string)
  default = null
}

variable "CRDPRFG_AlertPolicyCloudRunAppLogsAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "CRDPRFG_AlertPolicyCloudRunAppLogsSeverity" {
  type = string
  validation {
    condition = var.CRDPRFG_AlertPolicyCloudRunAppLogsSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CRDPRFG_AlertPolicyCloudRunAppLogsSeverity))
    error_message = "Valid inputs for | variable: CRDPRFG_AlertPolicyCloudRunAppLogsSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CRDPRFG_AlertPolicyCloudRunAppLogsDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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
  default = "p3-prod-aa94d"
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

variable "CRDPRFG_AlertPolicyCloudRunAppCpuUsageCombiner" {
  type = string
  validation {
    condition = contains([
      "AND",
      "OR",
      "AND_WITH_MATCHING_RESOURCE"
    ], var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageCombiner)
    error_message = "Valid inputs for | variable: CRDPRFG_AlertPolicyCloudRunAppCpuUsageCombiner | are: AND, OR, AND_WITH_MATCHING_RESOURCE"
  }
}

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

variable "CRDPRFG_AlertPolicyCloudRunAppCpuUsageConditions" {
  type = object({
    condition_absent = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_absent

      aggregations = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_aggregations
        per_series_aligner   = optional(string, null)
        group_by_fields      = optional(list(string), null)
        alignment_period     = optional(string, null) #may be string
        cross_series_reducer = optional(string, null)
      }), null)

      trigger = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_trigger
        percent = optional(number, null)
        count   = optional(number, null)
      }), null)

      duration = string #may be string
      filter   = optional(string, null)
    }), null)

    name = optional(string, null)

    condition_monitoring_query_language = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_monitoring_query_language
      query    = string
      duration = string #may be string

      trigger = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_trigger
        percent = optional(number, null)
        count   = optional(number, null)
      }), null)

      evaluation_missing_data = optional(string, null)
    }), null)

    condition_threshold = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_threshold
      threshold_value    = optional(number, null)
      denominator_filter = optional(string, null)

      denominator_aggregations = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_denominator_aggregations
        per_series_aligner   = optional(string, null)
        group_by_fields      = optional(list(string), null)
        alignment_period     = optional(string, null)
        cross_series_reducer = optional(string, null)
      }), null)

      duration = string

      forecast_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_forecast_options
        forecast_horizon = string
      }), null)

      comparison = string

      trigger = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_trigger
        percent = optional(number)
        count   = optional(number)
      }), null)

      aggregations = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_aggregations
        per_series_aligner   = optional(string, null)
        group_by_fields      = optional(list(string), null)
        alignment_period     = optional(string, null) #may be string
        cross_series_reducer = optional(string, null)
      }), null)

      filter                  = optional(string, null)
      evaluation_missing_data = optional(string, null)
    }), null)

    display_name = string

    condition_matched_log = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_matched_log
      filter           = string
      label_extractors = optional(map(string), null)
    }), null)

    condition_prometheus_query_language = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_prometheus_query_language
      query               = string
      duration            = optional(string, null)
      evaluation_interval = optional(string, null)
      labels              = optional(map(string), null)
      rule_group          = optional(string, null)
      alert_rule          = optional(string, null)
    }), null)
  })
}


variable "CRDPRFG_AlertPolicyCloudRunAppCpuUsageEnabled" {
  type    = bool
  default = true
}

variable "CRDPRFG_AlertPolicyCloudRunAppCpuUsageNotificationChannels" {
  type    = list(string)
  default = null
}

variable "CRDPRFG_AlertPolicyCloudRunAppCpuUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity" {
  type = string
  validation {
    condition = var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity))
    error_message = "Valid inputs for | variable: CRDPRFG_AlertPolicyCloudRunAppCpuUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CRDPRFG_AlertPolicyCloudRunAppCpuUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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
  default = "p3-prod-aa94d"
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

variable "CRDPRFG_AlertPolicyCloudRunAppMemUsageCombiner" {
  type = string
  validation {
    condition = contains([
      "AND",
      "OR",
      "AND_WITH_MATCHING_RESOURCE"
    ], var.CRDPRFG_AlertPolicyCloudRunAppMemUsageCombiner)
    error_message = "Valid inputs for | variable: CRDPRFG_AlertPolicyCloudRunAppMemUsageCombiner | are: AND, OR, AND_WITH_MATCHING_RESOURCE"
  }
}

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

variable "CRDPRFG_AlertPolicyCloudRunAppMemUsageConditions" {
  type = object({
    condition_absent = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_absent

      aggregations = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_aggregations
        per_series_aligner   = optional(string, null)
        group_by_fields      = optional(list(string), null)
        alignment_period     = optional(string, null) #may be string
        cross_series_reducer = optional(string, null)
      }), null)

      trigger = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_trigger
        percent = optional(number, null)
        count   = optional(number, null)
      }), null)

      duration = string #may be string
      filter   = optional(string, null)
    }), null)

    name = optional(string, null)

    condition_monitoring_query_language = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_monitoring_query_language
      query    = string
      duration = string #may be string

      trigger = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_trigger
        percent = optional(number, null)
        count   = optional(number, null)
      }), null)

      evaluation_missing_data = optional(string, null)
    }), null)

    condition_threshold = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_threshold
      threshold_value    = optional(number, null)
      denominator_filter = optional(string, null)

      denominator_aggregations = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_denominator_aggregations
        per_series_aligner   = optional(string, null)
        group_by_fields      = optional(list(string), null)
        alignment_period     = optional(string, null)
        cross_series_reducer = optional(string, null)
      }), null)

      duration = string

      forecast_options = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_forecast_options
        forecast_horizon = string
      }), null)

      comparison = string

      trigger = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_trigger
        percent = optional(number)
        count   = optional(number)
      }), null)

      aggregations = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_aggregations
        per_series_aligner   = optional(string, null)
        group_by_fields      = optional(list(string), null)
        alignment_period     = optional(string, null) #may be string
        cross_series_reducer = optional(string, null)
      }), null)

      filter                  = optional(string, null)
      evaluation_missing_data = optional(string, null)
    }), null)

    display_name = string

    condition_matched_log = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_matched_log
      filter           = string
      label_extractors = optional(map(string), null)
    }), null)

    condition_prometheus_query_language = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_condition_prometheus_query_language
      query               = string
      duration            = optional(string, null)
      evaluation_interval = optional(string, null)
      labels              = optional(map(string), null)
      rule_group          = optional(string, null)
      alert_rule          = optional(string, null)
    }), null)
  })
}


variable "CRDPRFG_AlertPolicyCloudRunAppMemUsageEnabled" {
  type    = bool
  default = true
}

variable "CRDPRFG_AlertPolicyCloudRunAppMemUsageNotificationChannels" {
  type    = list(string)
  default = null
}

variable "CRDPRFG_AlertPolicyCloudRunAppMemUsageAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
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

variable "CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity" {
  type = string
  validation {
    condition = var.CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity))
    error_message = "Valid inputs for | variable: CRDPRFG_AlertPolicyCloudRunAppMemUsageSeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CRDPRFG_AlertPolicyCloudRunAppMemUsageDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
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