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
  budget_type = var.budgetType
  time_unit   = var.budgetTimeUnit
  account_id  = var.budgetAccountId

  dynamic "auto_adjust_data" {
    for_each = var.budgetAutoAdjustData != null ? [var.budgetAutoAdjustData] : []
    content {
      auto_adjust_type = auto_adjust_data.value["auto_adjust_type"]

      dynamic "historical_options" {
        for_each = auto_adjust_data.value["historical_options"] != null ? [auto_adjust_data.value["historical_options"]] : []
        content {
          budget_adjustment_period = historical_options.value["budget_adjustment_period"]
        }
      }
    }
  }

  dynamic "cost_filter" {
    for_each = var.budgetCostFilter != null ? [var.budgetCostFilter] : []
    content {
      name   = cost_filter.value["name"]
      values = cost_filter.value["values"]
    }
  }

  dynamic "cost_types" {
    for_each = var.budgetCostTypes != null ? [var.budgetCostTypes] : []
    content {
      include_credit             = cost_types.value["include_credit"]
      include_discount           = cost_types.value["include_discount"]
      include_other_subscription = cost_types.value["include_other_subscription"]
      include_recurring          = cost_types.value["include_recurring"]
      include_refund             = cost_types.value["include_refund"]
      include_subscription       = cost_types.value["include_subscription"]
      include_support            = cost_types.value["include_support"]
      include_tax                = cost_types.value["include_tax"]
      include_upfront            = cost_types.value["include_upfront"]
      use_amortized              = cost_types.value["use_amortized"]
      use_blended                = cost_types.value["use_blended"]
    }
  }

  limit_amount = var.budgetLimitAmount
  limit_unit   = var.budgetLimitUnit
  name         = var.budgetName
  name_prefix  = var.budgetNamePrefix

  dynamic "notification" {
    for_each = var.budgetNotification != null ? [var.budgetNotification] : []
    content {
      comparison_operator        = notification.value["comparison_operator"]
      threshold                  = notification.value["threshold"]
      threshold_type             = notification.value["threshold_type"]
      notification_type          = notification.value["notification_type"]
      subscriber_email_addresses = notification.value["subscriber_email_addresses"]
      subscriber_sns_topic_arns  = notification.value["subscriber_sns_topic_arns"]
    }
  }

  dynamic "planned_limit" {
    for_each = var.budgetPlannedLimit != null ? [var.budgetPlannedLimit] : []
    content {
      start_time = planned_limit.value["start_time"]
      amount     = planned_limit.value["amount"]
      unit       = planned_limit.value["unit"]
    }
  }

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
  time_period_end   = var.budgetTimePeriodEnd
  time_period_start = var.budgetTimePeriodStart
}