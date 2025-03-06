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

resource "aws_ses_receipt_rule" "receiptRule" {
  count         = length(var.receiptRuleObjects)
  name          = "${var.resourceName}-receipt-rule-${count.index}"
  rule_set_name = var.receiptRuleSetName
  after         = var.receiptRuleObjects[count.index][""]
  enabled       = var.receiptRuleObjects[count.index][""]
  recipients    = var.receiptRuleObjects[count.index][""]
  scan_enabled  = var.receiptRuleObjects[count.index][""]
  tls_policy    = var.receiptRuleObjects[count.index][""]

  dynamic "add_header_action" {
    for_each = var.receiptRuleObjects[count.index][""] != null ? [var.receiptRuleObjects[count.index][""]] : []
    content {

    }
  }

  dynamic "bounce_action" {
    for_each = var.receiptRuleObjects[count.index][""] != null ? [var.receiptRuleObjects[count.index][""]] : []
    content {

    }
  }

  dynamic "lambda_action" {
    for_each = var.receiptRuleObjects[count.index][""] != null ? [var.receiptRuleObjects[count.index][""]] : []
    content {

    }
  }

  dynamic "s3_action" {
    for_each = var.receiptRuleObjects[count.index][""] != null ? [var.receiptRuleObjects[count.index][""]] : []
    content {

    }
  }

  dynamic "sns_action" {
    for_each = var.receiptRuleObjects[count.index][""] != null ? [var.receiptRuleObjects[count.index][""]] : []
    content {

    }
  }

  dynamic "stop_action" {
    for_each = var.receiptRuleObjects[count.index][""] != null ? [var.receiptRuleObjects[count.index][""]] : []
    content {

    }
  }

  dynamic "workmail_action" {
    for_each = var.receiptRuleObjects[count.index][""] != null ? [var.receiptRuleObjects[count.index][""]] : []
    content {

    }
  }
}