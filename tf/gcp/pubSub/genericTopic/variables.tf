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

variable "topicName" {
  type = string
}

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