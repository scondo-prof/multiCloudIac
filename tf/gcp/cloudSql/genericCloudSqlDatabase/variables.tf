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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database#argument-reference

variable "databaseInstance"{
    type = string
}

variable "databaseCharset" {
  type = string
  default = null
}

variable "databaseCollation" {
  type = string
  default = null
}

variable "databaseDeletionPolicy" {
  type = string
  validation {
    condition = var.databaseDeletionPolicy == null || can(contains([
    "ABANDON",
    "DELETE"
], var.databaseDeletionPolicy))
    error_message = "Valid inputs for | variable: var.databaseDeletionPolicy | are: ABANDON, DELETE"
  }
  default = null
}