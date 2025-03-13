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

resource "aws_api_gateway_usage_plan" "usagePlan" {
  name        = "${var.resourceName}-usage-plan"
  description = var.usagePlanDescription

  dynamic "api_stages" {
    for_each = var.usagePlanApiStages != null ? [var.usagePlanApiStages] : []
    content {
      api_id = api_stages.value["api_id"]
      stage  = api_stages.value["stage"]

      dynamic "throttle" {
        for_each = api_stages.value["throttle"] != null ? [api_stages.value["throttle"]] : []
        content {
          path        = throttle.value["path"]
          burst_limit = throttle.value["burst_limit"]
          rate_limit  = throttle.value["rate_limit"]
        }
      }
    }
  }

  dynamic "quota_settings" {
    for_each = var.usagePlanQuotaSettings != null ? [var.usagePlanQuotaSettings] : []
    content {
      limit  = quota_settings.value["limit"]
      offset = quota_settings.value["offset"]
      period = quota_settings.value["period"]
    }
  }

  dynamic "throttle_settings" {
    for_each = var.usagePlanThrottleSettings != null ? [var.usagePlanThrottleSettings] : []
    content {
      burst_limit = throttle_settings.value["burst_limit"]
      rate_limit  = throttle_settings.value["rate_limit"]
    }
  }

  product_code = var.usagePlanProductCode
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}