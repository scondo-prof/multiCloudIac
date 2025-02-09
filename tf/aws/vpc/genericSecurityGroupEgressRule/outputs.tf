output "egressRuleArn" {
  value = aws_vpc_security_group_ingress_rule.egressRule.arn
}

output "egressRuleId" {
  value = aws_vpc_security_group_ingress_rule.egressRule.security_group_rule_id
}