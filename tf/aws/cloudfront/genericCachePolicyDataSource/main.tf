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

data "aws_cloudfront_cache_policy" "cachePolicy" {
  count = length(var.cachePolicyObjects)
  name  = var.cachePolicyObjects[count.index]["name"]
  id    = var.cachePolicyObjects[count.index]["id"]
}