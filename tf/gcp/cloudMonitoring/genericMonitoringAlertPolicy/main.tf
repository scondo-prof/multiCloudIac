terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_monitoring_alert_policy" "alertPolicy" {
  display_name = "${var.resourceName}-alert-policy"
  combiner     = var.alertPolicyCombiner
  dynamic "conditions" {
    for_each = var.alertPolicyConditions != null ? [var.alertPolicyConditions] : []
    content {


      dynamic "condition_absent" {
        for_each = conditions.value.condition_absent != null ? [conditions.value.condition_absent] : []
        content {

          dynamic "aggregations" {
            for_each = condition_absent.value.aggregations != null ? [condition_absent.value.aggregations] : []
            content {
              per_series_aligner   = aggregations.value["per_series_aligner"]
              group_by_fields      = aggregations.value["group_by_fields"]
              alignment_period     = aggregations.value["alignment_period"]
              cross_series_reducer = condition_absent.value["cross_series_reducer"]
            }
          }

          dynamic "trigger" {
            for_each = condition_absent.value.trigger != null ? [condition_absent.value.trigger] : []
            content {
              percent = trigger.value["percent"]
              count   = trigger.value["count"]
            }
          }

          duration = condition_absent.value["duration"]
          filter   = condition_absent.value["filter"]
        }
      }
      name = conditions.value["name"]

      dynamic "condition_monitoring_query_language" {
        for_each = conditions.value.condition_monitoring_query_language != null ? [conditions.value.condition_monitoring_query_language] : []
        content {
          query    = condition_monitoring_query_language.value["query"]
          duration = condition_monitoring_query_language.value["duration"]
          dynamic "trigger" {
            for_each = condition_monitoring_query_language.value.trigger != null ? [condition_monitoring_query_language.value.trigger] : []
            content {
              percent = trigger.value["percent"]
              count   = trigger.value["count"]
            }
          }
          evaluation_missing_data = condition_monitoring_query_language.value["evaluation_missing_data"]
        }
      }

      dynamic "condition_threshold" {
        for_each = conditions.value.condition_threshold != null ? [conditions.value.condition_threshold] : []
        content {
          threshold_value    = condition_threshold.value["threshold_value"]
          denominator_filter = condition_threshold.value["denominator_filter"]

          dynamic "denominator_aggregations" {
            for_each = condition_threshold.value.denominator_aggregations
            content {
              per_series_aligner   = denominator_aggregations.value["per_series_aligner"]
              group_by_fields      = denominator_aggregations.value["group_by_fields"]
              alignment_period     = denominator_aggregations.value["alignment_period"]
              cross_series_reducer = denominator_aggregations.value["cross_series_reducer"]
            }
          }

          duration = condition_threshold.value["duration"]

          dynamic "forecast_options" {
            for_each = condition_threshold.value.forecast_options != null ? [condition_threshold.value.forecast_options] : []
            content {
              forecast_horizon = forecast_options.value["forecast_horizon"]
            }
          }

          comparison = condition_threshold.value["comparison"]

          dynamic "trigger" {
            for_each = condition_threshold.value.trigger != null ? [condition_threshold.value.trigger] : []
            content {
              percent = trigger.value["percent"]
              count   = trigger.value["count"]
            }
          }

          dynamic "aggregations" {
            for_each = condition_threshold.value.aggregations != null ? [condition_threshold.value.aggregations] : []
            content {
              per_series_aligner   = aggregations.value["per_series_aligner"]
              group_by_fields      = aggregations.value["group_by_fields"]
              alignment_period     = aggregations.value["alignment_period"]
              cross_series_reducer = aggregations.value["cross_series_reducer"]
            }
          }

          filter                  = condition_threshold.value["filter"]
          evaluation_missing_data = condition_threshold.value["evaluation_missing_data"]
        }
      }

      display_name = conditions.value["display_name"]

      dynamic "condition_matched_log" {
        for_each = conditions.value.condition_matched_log != null ? [conditions.value.condition_matched_log] : []
        content {
          filter           = condition_matched_log.value["filter"]
          label_extractors = condition_matched_log.value["label_extractors"]
        }
      }

      dynamic "condition_prometheus_query_language" {
        for_each = conditions.value.condition_prometheus_query_language != null ? [conditions.value.condition_prometheus_query_language] : []
        content {
          query               = condition_prometheus_query_language.value["query"]
          duration            = condition_prometheus_query_language.value["duration"]
          evaluation_interval = condition_prometheus_query_language.value["evaluation_interval"]
          labels              = condition_prometheus_query_language.value["labels"]
          rule_group          = condition_prometheus_query_language.value["rule_group"]
          alert_rule          = condition_prometheus_query_language.value["alert_rule"]
        }
      }

    }

  }

  enabled               = var.alertPolicyEnabled
  notification_channels = var.alertPolicyNotificationChannels

  dynamic "alert_strategy" {
    for_each = var.alertPolicyAlertStrategy != null ? [var.alertPolicyAlertStrategy] : []
    content {

      dynamic "notification_rate_limit" {
        for_each = alert_strategy.value.notification_rate_limit != null ? [alert_strategy.value.notification_rate_limit] : []
        content {
          period = notification_rate_limit.value["period"]
        }
      }

      auto_close = alert_strategy.value["auto_close"]

      dynamic "notification_channel_strategy" {
        for_each = alert_strategy.value.notification_channel_strategy != null ? [alert_strategy.value.notification_channel_strategy] : []
        content {
          notification_channel_names = notification_channel_strategy.value["notification_channel_names"]
          renotify_interval          = notification_channel_strategy.value["renotify_interval"]
        }
      }
    }
  }

  user_labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)

  severity = var.alertPolicySeverity

  dynamic "documentation" {
    for_each = var.alertPolicyDocumentation != null ? [var.alertPolicyDocumentation] : []
    content {
      content   = documentation.value["content"]
      mime_type = documentation.value["mime_type"]
      subject   = documentation.value["subject"]
      dynamic "links" {
        for_each = documentation.value.links != null ? [documentation.value.links] : []
        content {
          display_name = links.value["display_name"]
          url          = links.value["url"]
        }
      }
    }
  }

  project = var.gcpProjectId
}