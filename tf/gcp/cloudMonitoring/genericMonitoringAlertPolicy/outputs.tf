output "alertPolicyId" {
  value = google_monitoring_alert_policy.alertPolicy.id
}

output "alertPolicyName" {
  value = google_monitoring_alert_policy.alertPolicy.display_name
}