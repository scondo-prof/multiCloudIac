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

resource "aws_budgets_budget" "budget" {
  budget_type  = var.budgetType
  time_unit = var.budgetTimeUnit
  account_id = var.budgetAccountId
  
  dynamic "auto_adjust_data" {
    for_each = var.budgetAutoAdjustData != null ? [var.budgetAutoAdjustData]: []
    content {
      auto_adjust_type = auto_adjust_data.value["auto_adjust_type"]
      
      dynamic "historical_options" {
        for_each = auto_adjust_data.value["historical_options"] != null ? [auto_adjust_data.value["historical_options"]]: []
        content {
          budget_adjustment_period = historical_options.value["budget_adjustment_period"]
        }
      }
    }
  }

  dynamic "cost_filter" {
    for_each = var.budget != null ? [var.budget]: []
    content {
      
    }
  }

  dynamic "cost_types" {
    for_each = var.budget != null ? [var.budget]: []
    content {
      
    }
  }

  limit_amount = var.budget
  limit_unit = var.budget
  name         = var.budget
  name_prefix = var.budget
  
  dynamic "notification" {
    for_each = var.budget != null ? [var.budget]: []
    content {
      
    }
  }

  dynamic "planned_limit" {
    for_each = var.budget != null ? [var.budget]: []
    content {
      
    }
  }

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
  time_period_end = var.budget
  time_period_start = var.budget  
}