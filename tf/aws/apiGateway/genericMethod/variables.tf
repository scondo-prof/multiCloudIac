variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method#argument-reference

variable "methodRestApiId" {
  type = string
}

variable "methodResourceId" {
  type = string
}

variable "methodHttpMethod" {
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
    ], var.methodHttpMethod)
    error_message = "Valid inputs for | variable: var.methodHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY"
  }
}

variable "methodAuthorization" {
  type = string
  validation {
    condition = contains([
      "NONE",
      "CUSTOM",
      "AWS_IAM",
      "COGNITO_USER_POOLS"
    ], var.methodAuthorization)
    error_message = "Valid inputs for | variable: var.methodAuthorization | are: NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS"
  }
}

variable "methodAuthorizerId" {
  type    = string
  default = null
}

variable "methodAuthorizationScopes" {
  type    = list(string)
  default = null
}

variable "methodApiKeyRequired" {
  type    = bool
  default = null
}

variable "methodOperationName" {
  type    = string
  default = null
}

variable "methodRequestModels" {
  type    = map(string)
  default = null
}

variable "methodRequestValidatorId" {
  type    = string
  default = null
}

variable "methodRequestParameters" {
  type    = map(string)
  default = null
}