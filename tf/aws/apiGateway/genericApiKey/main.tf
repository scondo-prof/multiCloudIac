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

resource "aws_api_gateway_api_key" "apiKey" {
  name        = "${var.resourceName}-api-key"
  customer_id = var.apiKeyCustomerId
  description = var.apiKeyDescription
  enabled     = var.apiKeyEnabled
  value       = var.apiKeyValue
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}