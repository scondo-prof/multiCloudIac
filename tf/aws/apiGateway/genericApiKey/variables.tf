variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key#argument-reference

variable "apiKeyCustomerId" {
  type    = string
  default = null
}

variable "apiKeyDescription" {
  type    = string
  default = null
}

variable "apiKeyEnabled" {
  type    = bool
  default = null
}

variable "apiKeyValue" {
  type    = string
  default = null
}