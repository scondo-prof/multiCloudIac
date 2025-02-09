output "ingressRuleArn" {
  value = aws_vpc_security_group_ingress_rule.ingressRule.arn
}

output "ingressRuleId" {
  value = aws_vpc_security_group_ingress_rule.ingressRule.security_group_rule_id
}