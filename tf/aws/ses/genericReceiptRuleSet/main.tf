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

resource "aws_ses_receipt_rule_set" "receiptRuleSet" {
  rule_set_name = "${var.resourceName}-rule-set"
}