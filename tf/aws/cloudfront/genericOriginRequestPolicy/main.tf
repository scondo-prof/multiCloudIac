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

resource "aws_cloudfront_origin_request_policy" "orp" {
  name = "${var.resourceName}-orp"
  comment = var.orpComment
  
  cookies_config {
    cookie_behavior = var.orpCookiesConfig["cookie_behavior"]
    dynamic "cookies" {
      for_each = var.orpCookiesConfig["cookies"] != null ? [var.orpCookiesConfig["cookies"]]: []
      content {
        items = cookies.value["items"]
      }
    } 
  }

  headers_config {
    header_behavior = var.orp
    
    dynamic "headers" {
      for_each = var.orp != null ? [var.orp]: []
      content {
        
      }
    }
  }

  query_strings_config {
    query_string_behavior = var.orp
    dynamic "query_strings" {
      for_each = var.orp != null ? [var.orp]: []
      content {
        
      }
    }
  }
}