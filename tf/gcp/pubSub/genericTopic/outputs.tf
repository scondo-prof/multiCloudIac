output "topicId" {
  value = google_pubsub_topic.topic.id
}

output "topicTerraformLabels" {
  value = google_pubsub_topic.topic.terraform_labels
}

output "topicEffectiveLabels" {
  value = google_pubsub_topic.topic.effective_labels
}