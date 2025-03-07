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
  rule_set_name = var.receiptRuleObjects[count.index]["rule_set_name"]
  after         = var.receiptRuleObjects[count.index]["after"]
  enabled       = var.receiptRuleObjects[count.index]["enabled"]
  recipients    = var.receiptRuleObjects[count.index]["recipients"]
  scan_enabled  = var.receiptRuleObjects[count.index]["scan_enabled"]
  tls_policy    = var.receiptRuleObjects[count.index]["tls_policy"]

  dynamic "add_header_action" {
    for_each = var.receiptRuleObjects[count.index]["add_header_action"] != null ? [var.receiptRuleObjects[count.index]["add_header_action"]] : []
    content {
      header_name  = add_header_action.value["header_name"]
      header_value = add_header_action.value["header_value"]
      position     = add_header_action.value["position"]
    }
  }

  dynamic "bounce_action" {
    for_each = var.receiptRuleObjects[count.index]["bounce_action"] != null ? [var.receiptRuleObjects[count.index]["bounce_action"]] : []
    content {
      message         = bounce_action.value["message"]
      sender          = bounce_action.value["sender"]
      smtp_reply_code = bounce_action.value["smtp_reply_code"]
      status_code     = bounce_action.value["status_code"]
      topic_arn       = bounce_action.value["topic_arn"]
      position        = bounce_action.value["position"]
    }
  }

  dynamic "lambda_action" {
    for_each = var.receiptRuleObjects[count.index]["lambda_action"] != null ? [var.receiptRuleObjects[count.index]["lambda_action"]] : []
    content {
      function_arn    = lambda_action.value["function_arn"]
      invocation_type = lambda_action.value["invocation_type"]
      topic_arn       = lambda_action.value["topic_arn"]
      position        = lambda_action.value["position"]
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