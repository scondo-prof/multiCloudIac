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

variable "CRDPFG_CloudRunLogsAlertPolicyCombiner" {
  type = string
  validation {
    condition = contains([
      "AND",
      "OR",
      "AND_WITH_MATCHING_RESOURCE"
    ], var.CRDPFG_CloudRunLogsAlertPolicyCombiner)
    error_message = "Valid inputs for | variable: CRDPFG_CloudRunLogsAlertPolicyCombiner | are: AND, OR, AND_WITH_MATCHING_RESOURCE"
  }
}

variable "CRDPFG_CloudRunLogsAlertPolicyConditions" {
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


variable "CRDPFG_CloudRunLogsAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CRDPFG_CloudRunLogsAlertPolicyNotificationChannels" {
  type    = list(string)
  default = null
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
