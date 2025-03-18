variable "gcpProjectId"{
    type = string
}

variable "gcpRegion" {
  type = string
  default = "us-east1"
}

variable "resourceName"{
    type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "projectName" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = null
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#argument-reference

variable "databaseInstanceSettings" {
  type = object({
    tier = string
    edition = optional(string, null)
    activation_policy = optional(string, null)
    availability_type = optional(string, null)
    collation = optional(string, null)
    connector_enforcement = optional(string, null)
    deletion_protection_enabled = optional(bool, null)
    enable_google_ml_integration = optional(bool, null)
    enable_dataplex_integration = optional(bool, null)
    disk_autoresize = optional(bool, null)
    disk_autoresize_limit = optional(number, null)
    disk_size = optional(number, null)
    pricing_plan = optional(string, null)
    time_zone = optional(string, null)
  })
}