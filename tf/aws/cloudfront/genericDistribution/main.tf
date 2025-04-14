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

resource "aws_cloudfront_distribution" "cdn" {
  aliases =  var.cdnAliases
  comment = var.cdnComment
  continuous_deployment_policy_id = var.cdnContinuousDeploymentPolicyId
  
  dynamic "custom_error_response" {
    for_each = var.cdnCustomErrorResponse != null ? var.cdnCustomErrorResponse: []
    content {
      error_caching_min_ttl = custom_error_response.value["error_caching_min_ttl"]
      error_code = custom_error_response.value["error_code"]
      response_code = custom_error_response.value["response_code"]
      response_page_path = custom_error_response.value["response_page_path"]
    }
  }

  dynamic "default_cache_behavior" {
    
  }

  default_root_object = var.cdn
  enabled = var.cdn
  is_ipv6_enabled = var.cdn
  http_version = var.cdn
  
  dynamic "logging_config" {
    
  }

  dynamic "ordered_cache_behavior" {
    
  }

  origin {
    
  }

  dynamic "origin_group" {
    
  }

  price_class = var.cdn
  
  restrictions {
    
  }

  staging = var.cdn
  tags = var.cdn
  
  viewer_certificate {
    
  }

  web_acl_id = var.cdn
  retain_on_delete = var.cdn
  wait_for_deployment = var.cdn
}