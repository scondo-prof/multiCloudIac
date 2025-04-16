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
  name         = "${var.resourceName}-topic"
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
        for_each = ingestion_data_source_settings.value["aws_kinesis"] != null ? [ingestion_data_source_settings.value["aws_kinesis"]] : []
        content {
          stream_arn          = aws_kinesis.value["stream_arn"]
          consumer_arn        = aws_kinesis.value["consumer_arn"]
          aws_role_arn        = aws_kinesis.value["aws_role_arn"]
          gcp_service_account = aws_kinesis.value["gcp_service_account"]
        }
      }

      dynamic "cloud_storage" {
        for_each = ingestion_data_source_settings.value["cloud_storage"] != null ? [ingestion_data_source_settings.value["cloud_storage"]] : []
        content {
          bucket = cloud_storage.value["bucket"]

          dynamic "text_format" {
            for_each = cloud_storage.value["text_format"] != null ? [cloud_storage.value["text_format"]] : []
            content {
              delimiter = text_format.value["delimiter"]
            }
          }

          dynamic "avro_format" {
            for_each = cloud_storage.value["avro_format"] != null ? [cloud_storage.value["avro_format"]] : []
            content {

            }
          }

          dynamic "pubsub_avro_format" {
            for_each = cloud_storage.value["pubsub_avro_format"] != null ? [cloud_storage.value["pubsub_avro_format"]] : []
            content {

            }
          }

          minimum_object_create_time = cloud_storage.value["minimum_object_create_time"]
          match_glob                 = cloud_storage.value["match_glob"]
        }
      }

      dynamic "platform_logs_settings" {
        for_each = ingestion_data_source_settings.value["platform_logs_settings"] != null ? [ingestion_data_source_settings.value["platform_logs_settings"]] : []
        content {
          severity = platform_logs_settings.value["severity"]
        }
      }
    }
  }

  project = var.gcpProjectId
}