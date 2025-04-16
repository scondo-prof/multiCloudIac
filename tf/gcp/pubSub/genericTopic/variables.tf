variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#argument-reference

variable "topicKmsKeyName" {
  type    = string
  default = null
}

variable "topicMessageStoragePolicy" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#nested_message_storage_policy
    allowed_persistence_regions = list(string)
  })
  default = null
}

variable "topicSchemaSettings" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#nested_schema_settings
    schema   = string
    encoding = optional(string, null)
  })
  default = null
}

variable "topicMessageRetentionDuration" {
  type    = string
  default = null
}

variable "topicIngestionDataSourceSettings" {
  type = object({                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#nested_ingestion_data_source_settings
    aws_kinesis = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#nested_ingestion_data_source_settings_aws_kinesis
      stream_arn          = string
      consumer_arn        = string
      aws_role_arn        = string
      gcp_service_account = string
    }), null)

    cloud_storage = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#nested_ingestion_data_source_settings_cloud_storage
      bucket = string

      text_format = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#nested_ingestion_data_source_settings_cloud_storage_text_format
        delimiter = optional(string, null)
      }), null)

      avro_format = optional(object({}), null)

      pubsub_avro_format = optional(object({}), null)

      minimum_object_create_time = optional(string, null)
      match_glob                 = optional(string, null)
    }), null)

    platform_logs_settings = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic#nested_ingestion_data_source_settings_platform_logs_settings
      severity = optional(string, null)
    }), null)
  })
  default = null
}