variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#argument-reference

variable "eventSourceMappingAmazonManagedKafkaEventSourceConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#amazon_managed_kafka_event_source_config-configuration-block
  type = object({
    consumer_group_id = optional(string, null)
  })
  default = null
}

variable "eventSourceMappingBatchSize" {
  type    = number
  default = null
}

variable "eventSourceMappingBisectBatchOnFunctionError" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#amazon_managed_kafka_event_source_config-configuration-block
  type    = bool
  default = null
}

variable "eventSourceMappingDestinationConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#destination_config-configuration-block
  type = object({
    on_failure = optional(object({
      destination_arn = string
    }), null)
  })
  default = null
}

variable "eventSourceMappingDocumentDbEventSourceConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#document_db_event_source_config-configuration-block
  type = object({
    collection_name = optional(string, null)
    database_name   = string
    full_document   = optional(string, null)
  })
  default = null
}

variable "eventSourceMappingEnabled" {
  type    = bool
  default = null
}

variable "eventSourceMappingEventSourceArn" {
  type    = string
  default = null
}

variable "eventSourceMappingFilterCriteria" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#filter_criteria-configuration-block
  type = object({
    filter = optional(object({
      pattern = optional(string, null)
    }), null)
  })
  default = null
}

variable "eventSourceMappingFunctionName" {
  type = string
}

variable "eventSourceMappingFunctionResponseTypes" {
  type    = list(string)
  default = null
}

variable "eventSourceMappingKmsKeyArn" {
  type    = string
  default = null
}

variable "eventSourceMappingMaximumBatchingWindowInSeconds" {
  type = number
  validation {
    condition     = var.eventSourceMappingMaximumBatchingWindowInSeconds == null || var.eventSourceMappingMaximumBatchingWindowInSeconds == -1 || can(var.eventSourceMappingMaximumBatchingWindowInSeconds >= 60 && var.eventSourceMappingMaximumBatchingWindowInSeconds <= 604800)
    error_message = "var.eventSourceMappingMaximumBatchingWindowInSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 604800"
  }
  default = null
}

variable "eventSourceMappingMaximumRecordAgeInSeconds" {
  type = number
  validation {
    condition     = var.eventSourceMappingMaximumRecordAgeInSeconds == null || var.eventSourceMappingMaximumRecordAgeInSeconds == -1 || can(var.eventSourceMappingMaximumRecordAgeInSeconds >= 60 && var.eventSourceMappingMaximumRecordAgeInSeconds <= 604800)
    error_message = "var.eventSourceMappingMaximumRecordAgeInSeconds must be Greater than or Equal to 60 AND Less Than or Equal to 604800"
  }
  default = null
}

variable "eventSourceMappingMaximumRetryAttempts" {
  type = number
  validation {
    condition     = var.eventSourceMappingMaximumRetryAttempts == null || can(var.eventSourceMappingMaximumRetryAttempts >= -1 && var.eventSourceMappingMaximumRetryAttempts <= 10000)
    error_message = "var.eventSourceMappingMaximumRetryAttempts must be Greater than or Equal to -1 AND Less Than or Equal to 10000"
  }
  default = null
}

variable "eventSourceMappingMetricsConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#metrics_config-configuration-block
  type = object({
    metrics = list(string)
  })
  default = null
}

variable "eventSourceMappingParallelizationFactor" {
  type = number
  validation {
    condition     = var.eventSourceMappingParallelizationFactor == null || can(var.eventSourceMappingParallelizationFactor >= 1 && var.eventSourceMappingParallelizationFactor <= 10)
    error_message = "var.eventSourceMappingParallelizationFactor must be Greater than or Equal to 1 AND Less Than or Equal to 10"
  }
  default = null
}

variable "eventSourceMappingProvisionedPollerConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#provisioned_poller_config-configuration-block
  type = object({
    maximum_pollers = optional(number, null)
    minimum_pollers = optional(number, null)
  })
  default = null
}

variable "eventSourceMappingQueues" {
  type    = list(string)
  default = null
}

variable "eventSourceMappingScalingConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#scaling_config-configuration-block
  type = object({
    maximum_concurrency = optional(number, null)
  })
  default = null
}

variable "eventSourceMappingSelfManagedEventSource" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#self_managed_event_source-configuration-block
  type = object({
    endpoints = map(string)
  })
  default = null
}

variable "eventSourceMappingSelfManagedKafkaEventSourceConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping#self_managed_kafka_event_source_config-configuration-block
  type = object({
    consumer_group_id = optional(string, null)
  })
  default = null
}