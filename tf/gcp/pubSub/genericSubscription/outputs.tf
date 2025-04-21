output "subscriptionId" {
  value = google_pubsub_subscription.subscription.id
}

output "subscriptionTerraformLabels" {
  value = google_pubsub_subscription.subscription.terraform_labels
}

output "subscriptionEffectiveLabels" {
  value = google_pubsub_subscription.subscription.effective_labels
}