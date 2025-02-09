variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_authorizer#argument-reference

variable "authorizerUri" {
  type    = string
  default = null
}

variable "authorizerRestApiId" {
  type = string
}

variable "authorizerIdentitySource" {
  type    = string
  default = null
}

variable "authorizerType" {
  type = string
  validation {
    condition = var.authorizerType == null || can(contains([
      "TOKEN",
      "REQUEST",
      "COGNITO_USER_POOLS"
    ], var.authorizerType))
    error_message = "Valid inputs for | variable: var.authorizerType | are: TOKEN, REQUEST, COGNITO_USER_POOLS"
  }
  default = null
}

variable "authorizerCredentials" {
  type    = string
  default = null
}

variable "authorizerResultTtlInSeconds" {
  type    = number
  default = null
}

variable "authorizerIdenityValidationExpression" {
  type    = string
  default = null
}

variable "authorizerProviderArns" {
  type    = list(string)
  default = null
}