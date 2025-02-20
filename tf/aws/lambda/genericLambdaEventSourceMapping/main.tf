terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.awsRegion
}

resource "aws_lambda_event_source_mapping" "eventSourceMapping" {

  dynamic "amazon_managed_kafka_event_source_config" {
    for_each = var.eventSourceMappingAmazonManagedKafkaEventSourceConfig != null ? [var.eventSourceMappingAmazonManagedKafkaEventSourceConfig] : []
    content {
      consumer_group_id = amazon_managed_kafka_event_source_config.value["consumer_group_id"]
    }
  }

  batch_size                     = var.eventSourceMappingBatchSize
  bisect_batch_on_function_error = var.eventSourceMappingBisectBatchOnFunctionError

  dynamic "destination_config" {
    for_each = var.eventSourceMappingDestinationConfig != null ? [var.eventSourceMappingDestinationConfig] : []
    content {
      dynamic "on_failure" {
        for_each = destination_config.value["on_failure"] != null ? [destination_config.value["on_failure"]] : []
        content {
          destination_arn = on_failure.value["destination_arn"]
        }
      }
    }
  }

  dynamic "document_db_event_source_config" {
    for_each = var.eventSourceMappingDocumentDbEventSourceConfig != null ? [var.eventSourceMappingDocumentDbEventSourceConfig] : []
    content {
      collection_name = document_db_event_source_config.value["collection_name"]
      database_name   = document_db_event_source_config.value["database_name"]
      full_document   = document_db_event_source_config.value["full_document"]
    }
  }

  enabled          = var.eventSourceMappingEnabled
  event_source_arn = var.eventSourceMappingEventSourceArn

  dynamic "filter_criteria" {
    for_each = var.eventSourceMappingFilterCriteria != null ? [var.eventSourceMappingFilterCriteria] : []
    content {
      dynamic "filter" {
        for_each = filter_criteria.value["filter"] != null ? [filter_criteria.value["filter"]] : []
        content {
          pattern = filter.value["pattern"]
        }
      }
    }
  }

  function_name                      = var.eventSourceMappingFunctionName
  function_response_types            = var.eventSourceMappingFunctionResponseTypes
  kms_key_arn                        = var.eventSourceMappingKmsKeyArn
  maximum_batching_window_in_seconds = var.eventSourceMappingMaximumBatchingWindowInSeconds
  maximum_record_age_in_seconds      = var.eventSourceMappingMaximumRecordAgeInSeconds
  maximum_retry_attempts             = var.eventSourceMappingMaximumRetryAttempts

  dynamic "metrics_config" {
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  parallelization_factor = var.eventSourceMapping

  dynamic "provisioned_poller_config" {
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  queues = var.eventSourceMapping

  dynamic "scaling_config" {
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  dynamic "self_managed_event_source" {
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  dynamic "self_managed_kafka_event_source_config" {
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  dynamic "source_access_configuration" {
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  starting_position           = var.eventSourceMapping
  starting_position_timestamp = var.eventSourceMapping

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)

  topics                     = var.eventSourceMapping
  tumbling_window_in_seconds = var.eventSourceMapping
}