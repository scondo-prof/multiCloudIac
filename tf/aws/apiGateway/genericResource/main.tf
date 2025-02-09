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

resource "aws_api_gateway_resource" "resource" {
  rest_api_id = var.resourceRestApiId
  parent_id   = var.resourceParentId
  path_part   = var.resourcePathPart
}