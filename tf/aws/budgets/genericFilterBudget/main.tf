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
  name         = "${var.resourceName}-budget"
  budget_type  = var.budgetType
  limit_amount = var.budgetLimitAmount
  limit_unit   = var.budgetLimitUnit
  time_unit    = var.budgetTimeUnit

  cost_filter {
    name   = var.budgetCostFilterName
    values = var.budgetCostFilterValues
  }

  notification {
    comparison_operator       = var.budgetNotificationComparisonOperator
    threshold                 = var.budgetNotificationThreshold
    threshold_type            = var.budgetNotificationThresholdType
    notification_type         = var.budgetNotificationType
    subscriber_sns_topic_arns = var.snsTopicArns
  }

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
  }, var.awsBudgetAdditionalTags)
}