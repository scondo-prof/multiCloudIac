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

resource "aws_cloudwatch_log_subscription_filter" "logSubscriptionFilter" {
  name            = "${var.resourceName}-log-subscription-filter"
  destination_arn = var.logSubscriptionFilterDestinationArn
  filter_pattern  = var.logSubscriptionFilterPattern
  log_group_name  = var.logSubscriptionFilterLogGroupName
  role_arn        = var.logSubscriptionFilterRoleArn
  distribution    = var.logSubscriptionFilterDistribution
}