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

resource "aws_api_gateway_method_response" "methodResponse" {
  rest_api_id         = var.methodResponseRestApiId
  resource_id         = var.methodResponseResourceId
  http_method         = var.methodResponseHttpMethod
  status_code         = var.methodResponseStatusCode
  response_models     = var.methodResponseModels
  response_parameters = var.methodResponseParameters
}