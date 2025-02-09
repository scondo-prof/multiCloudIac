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

resource "aws_api_gateway_rest_api_policy" "restApiPolicy" {
  rest_api_id = var.restApiPolicyRestApiId
  policy = jsonencode({
    Version   = var.restApiPolicyVersion
    Statement = var.restApiPolicyStatements
  })
}