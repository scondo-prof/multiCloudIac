output "receiptRuleId" {
  value = aws_ses_receipt_rule.receiptRule[*].id
}

output "receiptRuleArn" {
  value = aws_ses_receipt_rule.receiptRule[*].arn
}