terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.awsRegion
}

resource "aws_api_gateway_method" "method" {
  rest_api_id          = var.methodRestApiId
  resource_id          = var.methodResourceId
  http_method          = var.methodHttpMethod
  authorization        = var.methodAuthorization
  authorizer_id        = var.methodAuthorizerId
  authorization_scopes = var.methodAuthorizationScopes
  api_key_required     = var.methodApiKeyRequired
  operation_name       = var.methodOperationName
  request_models       = var.methodRequestModels
  request_validator_id = var.methodRequestValidatorId
  request_parameters   = var.methodRequestParameters
}