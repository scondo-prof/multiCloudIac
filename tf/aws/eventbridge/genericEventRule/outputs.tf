output "eventRuleArn" {
  value = aws_cloudwatch_event_rule.eventRule.arn
}

output "eventRuleName" {
  value = aws_cloudwatch_event_rule.eventRule.name
}