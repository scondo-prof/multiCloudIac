output "receiptRuleId" {
  value = aws_ses_receipt_rule.receiptRule[*].id
}

output "receiptRule" {
  value = aws_ses_receipt_rule.receiptRule[*].arn
}