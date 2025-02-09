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

resource "aws_api_gateway_deployment" "deployment" {
  description = var.deploymentDescription
  rest_api_id = var.deploymentRestApiId
  triggers    = var.deploymentTriggers
  variables   = var.deploymentVariables
}