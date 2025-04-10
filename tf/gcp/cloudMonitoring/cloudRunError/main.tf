
resource "google_monitoring_alert_policy" "cloudRunAlertPolicy" {
  display_name = "${var.resourceName}-cloud-run-log-error-alert-policy"

  conditions {
    display_name = "Log match condition"

    condition_matched_log {
      filter = "resource.type=\"cloud_run_revision\"\nseverity=ERROR\nresource.labels.service_name=\"${var.resourceName}\""

      label_extractors = {
        "Summary" = "EXTRACT(textPayload)"
      }
    }
  }

  combiner = "OR"
  enabled  = true

  notification_channels = [
    "projects/${var.gcpProjectId}/notificationChannels/${var.cloudRunAlertPolicyNotificationChannelId}"
  ]

  alert_strategy {
    notification_rate_limit {
      period = var.cloudRunAlertPolicyNotificationRateLimit #600s
    }

    auto_close = var.cloudRunAlertPolicyAutoClose #"604800s"
  }
}