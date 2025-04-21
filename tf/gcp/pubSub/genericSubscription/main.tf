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

resource "google_pubsub_subscription" "subscription" {
  name  = "${var.resourceName}-subscription"
  topic = var.subscriptionTopic
  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)

  dynamic "bigquery_config" {
    for_each = var.subscriptionBigqueryConfig != null ? [var.subscriptionBigqueryConfig] : []
    content {
      table                 = bigquery_config.value["table"]
      use_table_schema      = bigquery_config.value["use_table_schema"]
      use_topic_schema      = bigquery_config.value["use_topic_schema"]
      write_metadata        = bigquery_config.value["write_metadata"]
      drop_unknown_fields   = bigquery_config.value["drop_unknown_fields"]
      service_account_email = bigquery_config.value["service_account_email"]
    }
  }

  dynamic "cloud_storage_config" {
    for_each = var.subscriptionCloudStorageConfig != null ? [var.subscriptionCloudStorageConfig] : []
    content {
      bucket                   = cloud_storage_config.value["bucket"]
      filename_prefix          = cloud_storage_config.value["filename_prefix"]
      filename_suffix          = cloud_storage_config.value["filename_suffix"]
      filename_datetime_format = cloud_storage_config.value["filename_datetime_format"]
      max_duration             = cloud_storage_config.value["max_duration"]
      max_bytes                = cloud_storage_config.value["max_bytes"]
      max_messages             = cloud_storage_config.value["max_messages"]

      dynamic "avro_config" {
        for_each = cloud_storage_config.value["avro_config"] != null ? [cloud_storage_config.value["avro_config"]] : []
        content {
          write_metadata   = avro_config.value["write_metadata"]
          use_topic_schema = avro_config.value["use_topic_schema"]
        }
      }

      service_account_email = cloud_storage_config.value["service_account_email"]
    }
  }

  dynamic "push_config" {
    for_each = var.subscriptionPushConfig != null ? [var.subscriptionPushConfig] : []
    content {
      dynamic "oidc_token" {
        for_each = push_config.value["oidc_token"] != null ? [push_config.value["oidc_token"]] : []
        content {
          service_account_email = oidc_token.value["service_account_email"]
          audience              = oidc_token.value["audience"]
        }
      }

      push_endpoint = push_config.value["push_endpoint"]
      attributes    = push_config.value["attributes"]

      dynamic "no_wrapper" {
        for_each = push_config.value["no_wrapper"] != null ? [push_config.value["no_wrapper"]] : []
        content {
          write_metadata = no_wrapper.value["write_metadata"]
        }
      }
    }
  }

  ack_deadline_seconds       = var.subscriptionAckDeadlineSeconds
  message_retention_duration = var.subscriptionMessageRetentionDuration
  retain_acked_messages      = var.subscriptionRetainAckedMessages

  dynamic "expiration_policy" {
    for_each = var.subscriptionExpirationPolicy != null ? [var.subscriptionExpirationPolicy] : []
    content {
      ttl = expiration_policy.value["ttl"]
    }
  }

  filter = var.subscriptionFilter

  dynamic "dead_letter_policy" {
    for_each = var.subscription != null ? [var.subscription] : []
    content {

    }
  }

  dynamic "retry_policy" {
    for_each = var.subscription != null ? [var.subscription] : []
    content {

    }
  }

  enable_message_ordering      = var.subscription
  enable_exactly_once_delivery = var.subscription
  project                      = var.gcpProjectId
}