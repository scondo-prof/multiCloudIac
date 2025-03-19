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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account#argument-reference

variable "serviceAccountAccountId" {
  type = string
}

variable "serviceAccountDisabled" {
  type    = bool
  default = null
}

variable "serviceAccountDescription" {
  type    = string
  default = null
}

variable "serviceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = null
}