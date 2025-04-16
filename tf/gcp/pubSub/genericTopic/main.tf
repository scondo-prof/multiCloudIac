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
  name         = var.topicName
  kms_key_name = var.topicKmsKeyName
  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)

  dynamic "message_storage_policy" {
    for_each = var.topicMessageStoragePolicy != null ? [var.topicMessageStoragePolicy] : []
    content {
      allowed_persistence_regions = message_storage_policy.value["allowed_persistence_regions"]
    }
  }

  dynamic "schema_settings" {
    for_each = var.topicSchemaSettings != null ? [var.topicSchemaSettings] : []
    content {
      schema   = schema_settings.value["schema"]
      encoding = schema_settings.value["encoding"]
    }
  }

  message_retention_duration = var.topicMessageRetentionDuration

  dynamic "ingestion_data_source_settings" {
    for_each = var.topicIngestionDataSourceSettings != null ? [var.topicIngestionDataSourceSettings] : []
    content {
      dynamic "aws_kinesis" {
        for_each = ingestion_data_source_settings.value[""] != null ? [ingestion_data_source_settings.value[""]] : []
        content {

        }
      }

      dynamic "cloud_storage" {
        for_each = ingestion_data_source_settings.value[""] != null ? [ingestion_data_source_settings.value[""]] : []
        content {

        }
      }

      dynamic "platform_logs_settings" {
        for_each = ingestion_data_source_settings.value[""] != null ? [ingestion_data_source_settings.value[""]] : []
        content {

        }
      }
    }
  }

  project = var.gcpProjectId
}