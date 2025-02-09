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

resource "aws_api_gateway_request_validator" "requestValidator" {
  name                        = "${var.resourceName}-request-validator"
  rest_api_id                 = var.requestValidatorRestApiId
  validate_request_body       = var.requestValidatorValidateRequestBody
  validate_request_parameters = var.requestValidatorValidateRequestParameters
}