output "notificationChannelId" {
  value = google_monitoring_notification_channel.notificationChannel.id
}

output "notificationChannelName" {
  value = google_monitoring_notification_channel.notificationChannel.display_name
}