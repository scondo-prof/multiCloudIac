variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration_response#argument-reference

variable "integrationResponseHttpMethod" {
  type = string
  validation {
    condition = contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTIONS",
      "ANY"
    ], var.integrationResponseHttpMethod)
    error_message = "Valid inputs for | variable: var.integrationResponseHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY"
  }
}

variable "integrationResponseResourceId" {
  type = string
}

variable "integrationResponseRestApiId" {
  type = string
}

variable "integrationResponseStatusCode" {
  type = number
}

variable "integrationResponseContentHandling" {
  type = string
  validation {
    condition = var.integrationResponseContentHandling == null || can(contains([
      "CONVERT_TO_BINARY",
      "CONVERT_TO_TEXT"
    ], var.integrationResponseContentHandling))
    error_message = "Valid inputs for | variable: var.integrationResponseContentHandling | are: CONVERT_TO_BINARY, and CONVERT_TO_TEXT"
  }
  default = null
}

variable "integrationResponseResponseParameters" {
  type    = map(string)
  default = null
}

variable "integrationResponseResponseTemplates" {
  type    = map(string)
  default = null
}

variable "integrationResponseSelectionPattern" {
  type    = string
  default = null
}