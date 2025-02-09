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

resource "aws_api_gateway_integration_response" "integrationResponse" {
  http_method         = var.integrationResponseHttpMethod
  resource_id         = var.integrationResponseResourceId
  rest_api_id         = var.integrationResponseRestApiId
  status_code         = var.integrationResponseStatusCode
  content_handling    = var.integrationResponseContentHandling
  response_parameters = var.integrationResponseResponseParameters
  response_templates  = var.integrationResponseResponseTemplates
  selection_pattern   = var.integrationResponseSelectionPattern
}