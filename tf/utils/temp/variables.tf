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
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CRDPFG_SWSV_Cloudbuild_Secret_manager_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
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
variable "resourceName" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "serviceAccountAccountId" {
  type = string
}

variable "serviceAccountDisabled" {
  type    = bool
  default = false
}

variable "serviceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "serviceAccountRoleId" {
  type = string
}

variable "serviceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.serviceAccountRoleStage)
    error_message = "Variable serviceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "cloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "cloudBuildTriggerGithubRepoName" {
  type = string
}

variable "cloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "cloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "cloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "cloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

#---

variable "CRDPFG_CloudRunAlertPolicyNotificationChannelId" {
  type = string
}

variable "CRDPFG_CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "CRDPFG_CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}

#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

variable "CRDPFG_CloudRunMemAlertPolicyCombiner" {
  type = string
  validation {
    condition = contains([
      "AND",
      "OR",
      "AND_WITH_MATCHING_RESOURCE"
    ], var.CRDPFG_CloudRunMemAlertPolicyCombiner)
    error_message = "Valid inputs for | variable: CRDPFG_CloudRunMemAlertPolicyCombiner | are: AND, OR, AND_WITH_MATCHING_RESOURCE"
  }
}

variable "CRDPFG_CloudRunMemAlertPolicyConditions" {
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


variable "CRDPFG_CloudRunMemAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CRDPFG_CloudRunMemAlertPolicyNotificationChannels" {
  type    = list(string)
  default = null
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

variable "CRDPFG_CloudRunCpuAlertPolicyCombiner" {
  type = string
  validation {
    condition = contains([
      "AND",
      "OR",
      "AND_WITH_MATCHING_RESOURCE"
    ], var.CRDPFG_CloudRunCpuAlertPolicyCombiner)
    error_message = "Valid inputs for | variable: CRDPFG_CloudRunCpuAlertPolicyCombiner | are: AND, OR, AND_WITH_MATCHING_RESOURCE"
  }
}

variable "CRDPFG_CloudRunCpuAlertPolicyConditions" {
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


variable "CRDPFG_CloudRunCpuAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CRDPFG_CloudRunCpuAlertPolicyNotificationChannels" {
  type    = list(string)
  default = null
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
