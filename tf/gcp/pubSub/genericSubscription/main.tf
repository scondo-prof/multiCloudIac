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
  name         = "${var.resourceName}-subscription"
  topic = var.subscriptionTopic
  labels = merge({
    project       = var.projectName
    deployed-date = var.deployedDate
    created-by    = var.createdBy
    tf-module     = var.tfModule
  }, var.additionalTags)

  dynamic "bigquery_config" {
    for_each = var.subscriptionBigqueryConfig != null ? [var.subscriptionBigqueryConfig]: []
    content {
      table = bigquery_config.value["table"]
      use_table_schema = bigquery_config.value["use_table_schema"]
      use_topic_schema = bigquery_config.value["use_topic_schema"]
      write_metadata = bigquery_config.value["write_metadata"]
      drop_unknown_fields = bigquery_config.value["drop_unknown_fields"]
      service_account_email = bigquery_config.value["service_account_email"]
    }
  }

  dynamic "cloud_storage_config" {
    for_each = var.subscription != null ? [var.subscription]: []
    content {
      
    }
  }

  dynamic "push_config" {
    for_each = var.subscription != null ? [var.subscription]: []
    content {
      
    }
  }

  ack_deadline_seconds = var.subscription
  message_retention_duration = var.subscription
  retain_acked_messages = var.subscription
  
  dynamic "expiration_policy" {
    for_each = var.subscription != null ? [var.subscription]: []
    content {
      
    }
  }

  filter = var.subscription

  dynamic "dead_letter_policy" {
    for_each = var.subscription != null ? [var.subscription]: []
    content {
      
    }
  }

  dynamic "retry_policy" {
    for_each = var.subscription != null ? [var.subscription]: []
    content {
      
    }
  }

  enable_message_ordering = var.subscription
  enable_exactly_once_delivery = var.subscription
  project = var.gcpProjectId
}