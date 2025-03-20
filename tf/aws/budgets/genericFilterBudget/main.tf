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
  time_unit = var.budget
  account_id = var.budget
  
  dynamic "auto_adjust_data" {
    for_each = var.budget != null ? [var.budget]: []
    content {
      
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