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

resource "aws_api_gateway_model" "model" {
  rest_api_id  = var.modelRestApiId
  name         = var.modelName
  description  = var.modelDescription
  content_type = var.modelContentType
  schema       = file(var.modelSchemaFile)
}