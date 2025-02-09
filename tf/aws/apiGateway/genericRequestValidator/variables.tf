variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_request_validator#argument-reference

variable "requestValidatorRestApiId" {
  type = string
}

variable "requestValidatorValidateRequestBody" {
  type    = bool
  default = null
}

variable "requestValidatorValidateRequestParameters" {
  type    = bool
  default = null
}