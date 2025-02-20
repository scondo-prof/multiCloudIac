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
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  enabled          = var.eventSourceMapping
  event_source_arn = var.eventSourceMapping

  dynamic "filter_criteria" {
    for_each = var.eventSourceMapping != null ? [var.eventSourceMapping] : []
    content {

    }
  }

  function_name                      = var.eventSourceMapping
  function_response_types            = var.eventSourceMapping
  kms_key_arn                        = var.eventSourceMapping
  maximum_batching_window_in_seconds = var.eventSourceMapping
  maximum_record_age_in_seconds      = var.eventSourceMapping
  maximum_retry_attempts             = var.eventSourceMapping

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