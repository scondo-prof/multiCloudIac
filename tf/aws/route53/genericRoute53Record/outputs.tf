output "recordFqdn" {
  value = aws_route53_record.record.fqdn
}

output "recordName" {
  value = aws_route53_record.record.name
}