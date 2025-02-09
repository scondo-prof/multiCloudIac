resourceName = "snorting-antihistamines"

alertPolicyCombiner = "OR"

alertPolicyConditions = {
  condition_monitoring_query_language = {
    duration = "300s"
    trigger = {
        percent = 50
    }
    query = <<EOT
fetch cloud_run_revision
| metric 'run.googleapis.com/container/memory/utilizations'
| filter (resource.service_name == 'ltl-ros-dash')
| group_by 5m,
    [value_utilizations_percentile: percentile(value.utilizations, 99)]
| every 5m
| condition val() > .80
EOT
  }
  display_name = "High Mem Utilization in Cloud Run Service"
}

alertPolicyEnabled = true

alertPolicyNotificationChannels = ["projects/p3-prod-aa94d/notificationChannels/5996756439301337163"]

deployedDate = "10-24-2024"

projectName = "slurpin-some-spaghetti"

alertPolicySeverity = "WARNING"