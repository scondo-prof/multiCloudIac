variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration#argument-reference

variable "integrationRestApiId" {
  type = string
}

variable "integrationResourceId" {
  type = string
}

variable "integrationHttpMethod" {
  type = string
  validation {
    condition = contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTION",
      "ANY"
    ], var.integrationHttpMethod)
    error_message = "Valid inputs for | variable: var.integrationHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  }
}

variable "integrationIntegrationHttpMethod" {
  type = string
  validation {
    condition = var.integrationIntegrationHttpMethod == null || can(contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTION",
      "ANY"
    ], var.integrationIntegrationHttpMethod))
    error_message = "Valid inputs for | variable: var.integrationIntegrationHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  }
  default = null
}

variable "integrationType" {
  type = string
  validation {
    condition = var.integrationType == null || can(contains([
      "HTTP",
      "MOCK",
      "AWS",
      "AWS_PROXY",
      "HTTP_PROX"
    ], var.integrationType))
    error_message = "Valid inputs for | variable: var.integrationType | are: HTTP, MOCK, AWS, AWS_PROXY, HTTP_PROX"
  }
  default = null
}

variable "integrationConnectionType" {
  type = string
  validation {
    condition = var.integrationConnectionType == null || can(contains([
      "INTERNET",
      "VPC_LINK"
    ], var.integrationConnectionType))
    error_message = "Valid inputs for | variable: var.integrationConnectionType | are: INTERNET, VPC_LINK"
  }
  default = null
}

variable "integrationConnectionId" {
  type    = string
  default = null
}

variable "integrationUri" {
  type    = string
  default = null
}

variable "integrationCredentials" {
  type    = string
  default = null
}

variable "integrationRequestTemplates" {
  type    = map(string)
  default = null
}

variable "integrationRequestParameters" {
  type    = map(string)
  default = null
}

variable "integrationPassthroughBehavior" {
  type = string
  validation {
    condition = var.integrationPassthroughBehavior == null || can(contains([
      "WHEN_NO_MATCH",
      "WHEN_NO_TEMPLATES",
      "NEVER"
    ], var.integrationPassthroughBehavior))
    error_message = "Valid inputs for | variable: var.integrationPassthroughBehavior | are: WHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER"
  }
  default = null
}

variable "integrationCacheKeyParameters" {
  type    = list(string)
  default = null
}

variable "integrationCacheNamespace" {
  type    = string
  default = null
}

variable "integrationContentHandling" {
  type = string
  validation {
    condition = var.integrationContentHandling == null || can(contains([
      "CONVERT_TO_BINARY",
      "CONVERT_TO_TEXT"
    ], var.integrationContentHandling))
    error_message = "Valid inputs for | variable: var.integrationContentHandling | are: CONVERT_TO_BINARY, CONVERT_TO_TEXT"
  }
  default = null
}

variable "integrationTimeoutMilliseconds" {
  type = number
  validation {
    condition     = var.integrationTimeoutMilliseconds == null || can(var.integrationTimeoutMilliseconds >= 50 && var.integrationTimeoutMilliseconds <= 300000)
    error_message = "var.integrationTimeoutMilliseconds must be Greater than or Equal to 50 AND Less Than or Equal to 300000"
  }
  default = null
}

variable "integrationTlsConfig" {
  type = object({
    insecure_skip_verification = optional(bool, null)
  })
  default = null
}