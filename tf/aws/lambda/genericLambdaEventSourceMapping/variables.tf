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

variable "eventSourceMappingBisectBatchOnFunctionError" {
  type    = bool
  default = null
}

variable "eventSourceMappingDestinationConfig" {
  type = object({
    on_failure = optional(object({
      destination_arn = string
    }), null)
  })
  default = null
}