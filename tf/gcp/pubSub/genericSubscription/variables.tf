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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#argument-reference

variable "subscriptionTopic" {
  type = string
}

variable "subscriptionBigqueryConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_bigquery_config
    table                 = string
    use_table_schema      = optional(bool, null)
    use_topic_schema      = optional(bool, null)
    write_metadata        = optional(bool, null)
    drop_unknown_fields   = optional(bool, null)
    service_account_email = optional(string, null)
  })
  default = null
}

variable "subscriptionCloudStorageConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_cloud_storage_config
    bucket                   = string
    filename_prefix          = optional(string, null)
    filename_suffix          = optional(string, null)
    filename_datetime_format = optional(string, null)
    max_duration             = optional(string, null)
    max_bytes                = optional(string, null)
    max_messages             = optional(number, null)

    avro_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_cloud_storage_config_avro_config
      write_metadata   = optional(bool, null)
      use_topic_schema = optional(bool, null)
    }), null)

    service_account_email = optional(string, null)
  })
  default = null
}

variable "subscriptionPushConfig" {
  type = object({                  #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_push_config
    oidc_token = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_push_config_oidc_token
      service_account_email = string
      audience              = optional(string, null)
    }), null)

    push_endpoint = string
    attributes    = optional(string, null)

    no_wrapper = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_push_config_no_wrapper
      write_metadata = bool
    }), null)
  })
  default = null
}

variable "subscriptionAckDeadlineSeconds" {
  type = number
  validation {
    condition     = var.subscriptionAckDeadlineSeconds == null || can(var.subscriptionAckDeadlineSeconds >= 0 && var.subscriptionAckDeadlineSeconds <= 600)
    error_message = "var.subscriptionAckDeadlineSeconds must be Greater than or Equal to 0 AND Less Than or Equal to 600"
  }
  default = null
}

variable "subscriptionMessageRetentionDuration" {
  type    = string
  default = null
}

variable "subscriptionRetainAckedMessages" {
  type    = bool
  default = null
}

variable "subscriptionExpirationPolicy" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_expiration_policy
    ttl = string
  })
  default = null
}

variable "subscriptionFilter" {
  type    = string
  default = null
}