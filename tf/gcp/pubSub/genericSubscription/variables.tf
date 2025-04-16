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
  type = object({#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_subscription#nested_bigquery_config
    table = string
    use_table_schema = optional(bool, null)
    use_topic_schema = optional(bool, null)
    write_metadata = optional(bool, null)
    drop_unknown_fields = optional(bool, null)
    service_account_email = optional(string, null)
  })
  default = null
}