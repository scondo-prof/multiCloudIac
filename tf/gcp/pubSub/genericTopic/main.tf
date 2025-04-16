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

resource "google_pubsub_topic" "topic" {
  name = var.topicName
  kms_key_name = var.topicKmsKeyName
  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)
  
  dynamic "message_storage_policy" {
    for_each = var.topic != null ? [var.topic] : []
    content {
      
    }
  }

  dynamic "schema_settings" {
    for_each = var.topic != null ? [var.topic] : []
    content {
      
    }
  }

  message_retention_duration = var.topic

  dynamic "ingestion_data_source_settings" {
    for_each = var.topic != null ? [var.topic] : []
    content {
      
    }
  }

  project = var.gcpProjectId
}