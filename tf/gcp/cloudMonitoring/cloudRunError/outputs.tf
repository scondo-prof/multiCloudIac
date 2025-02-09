output "cloudRunAlertPolicyId" {
  value = google_monitoring_alert_policy.cloudRunAlertPolicy.id
}

output "cloudRunAlertPolicyName" {
  value = google_monitoring_alert_policy.cloudRunAlertPolicy.display_name
}