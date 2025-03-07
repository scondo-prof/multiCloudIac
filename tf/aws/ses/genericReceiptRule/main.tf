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
    for_each = var.receiptRuleObjects[count.index]["s3_action"] != null ? [var.receiptRuleObjects[count.index]["s3_action"]] : []
    content {
      bucket_name       = s3_action.value["bucket_name"]
      iam_role_arn      = s3_action.value["iam_role_arn"]
      kms_key_arn       = s3_action.value["kms_key_arn"]
      object_key_prefix = s3_action.value["object_key_prefix"]
      topic_arn         = s3_action.value["topic_arn"]
      position          = s3_action.value["position"]
    }
  }

  dynamic "sns_action" {
    for_each = var.receiptRuleObjects[count.index]["sns_action"] != null ? [var.receiptRuleObjects[count.index]["sns_action"]] : []
    content {
      topic_arn = sns_action.value["topic_arn"]
      position  = sns_action.value["position"]
      encoding  = sns_action.value["encoding"]
    }
  }

  dynamic "stop_action" {
    for_each = var.receiptRuleObjects[count.index]["stop_action"] != null ? [var.receiptRuleObjects[count.index]["stop_action"]] : []
    content {
      scope     = stop_action.value["scope"]
      topic_arn = stop_action.value["topic_arn"]
      position  = stop_action.value["position"]
    }
  }

  dynamic "workmail_action" {
    for_each = var.receiptRuleObjects[count.index]["workmail_action"] != null ? [var.receiptRuleObjects[count.index]["workmail_action"]] : []
    content {
      organization_arn = workmail_action.value["organization_arn"]
      topic_arn        = workmail_action.value["topic_arn"]
      position         = workmail_action.value["position"]
    }
  }
}