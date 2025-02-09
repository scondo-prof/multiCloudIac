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

resource "aws_api_gateway_usage_plan_key" "usagePlanKey" {
  key_id        = var.usagePlanKeyId
  key_type      = var.usagePlanKeyType
  usage_plan_id = var.usagePlanKeyUsagePlanId
}