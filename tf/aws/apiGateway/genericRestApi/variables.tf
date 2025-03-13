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

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api#argument-reference

variable "restApiKeySource" {
  type = string
  validation {
    condition = var.restApiKeySource == null || can(contains([
      "HEADER",
      "AUTHORIZER"
    ], var.restApiKeySource))
    error_message = "Valid inputs for | variable: var.restApiKeySource | are: HEADER, AUTHORIZER"
  }
  default = null
}

variable "restApiBinaryMediaTypes" {
  type    = list(string)
  default = null
}

variable "restApiBody" {
  type    = string
  default = null
}

variable "restApiDescription" {
  type    = string
  default = null
}

variable "restApiDisableExecuteApiEndpoint" {
  type    = bool
  default = null
}

variable "restApiEndpointConfiguration" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api#endpoint_configuration
  type = object({
    types            = list(string)
    vpc_endpoint_ids = optional(list(string), null)
  })
  default = null
}

variable "restApiMinimumCompressionSize" {
  type = number
  validation {
    condition     = var.restApiMinimumCompressionSize == null || can(var.restApiMinimumCompressionSize >= -1 && var.restApiMinimumCompressionSize <= 10485760)
    error_message = "var.restApiMinimumCompressionSize must be Greater than or Equal to -1 AND Less Than or Equal to 10485760"
  }
  default = null
}

variable "restApiFailOnWarnings" {
  type    = bool
  default = null
}

variable "restApiParameters" {
  type    = map(string)
  default = null
}

variable "restApiPolicy" {
  type    = string
  default = null
}

variable "restApiPutRestApiMode" {
  type = string
  validation {
    condition = var.restApiPutRestApiMode == null || can(contains([
      "merge",
      "overwrite"
    ], var.restApiPutRestApiMode))
    error_message = "Valid inputs for | variable: var.restApiPutRestApiMode | are: merge, overwrite"
  }
  default = null
}