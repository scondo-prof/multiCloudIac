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

resource "aws_api_gateway_authorizer" "authorizer" {
  authorizer_uri                   = var.authorizerUri
  name                             = "${var.resourceName}-authorizer"
  rest_api_id                      = var.authorizerRestApiId
  identity_source                  = var.authorizerIdentitySource
  type                             = var.authorizerType
  authorizer_credentials           = var.authorizerCredentials
  authorizer_result_ttl_in_seconds = var.authorizerResultTtlInSeconds
  identity_validation_expression   = var.authorizerIdenityValidationExpression
  provider_arns                    = var.authorizerProviderArns
}