output "pa_id" {
  value = var.create_pa ? aws_iam_policy_attachment.pa[0].id : null
}

output "pa_name" {
  value = var.create_pa ? aws_iam_policy_attachment.pa[0].name : null
}