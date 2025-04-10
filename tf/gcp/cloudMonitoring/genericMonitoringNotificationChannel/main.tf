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

resource "google_monitoring_notification_channel" "notificationChannel" {
  type   = var.notificationChannelType
  labels = var.notificationChannelLabels

  dynamic "sensitive_labels" {
    for_each = var.notificationChannelSensitiveLabels != null ? [var.notificationChannelSensitiveLabels] : []
    content {
      auth_token  = sensitive_labels.value["auth_token"]
      password    = sensitive_labels.value["password"]
      service_key = sensitive_labels.value["service_key"]
    }
  }

  user_labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)

  display_name = "${var.resourceName}-notification-channel"
  enabled      = var.notificationChannelEnabled
  project      = var.gcpProjectId
  force_delete = var.notificationChannelForceDelete

}