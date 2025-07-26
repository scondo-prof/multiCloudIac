output "policy_arn" {
  value = var.create_policy ? aws_iam_policy.policy[0].arn : null
}

output "policy_attachment_count" {
  value = var.create_policy ? aws_iam_policy.policy[0].attachment_count : null
}

output "policy_id" {
  value = var.create_policy ? aws_iam_policy.policy[0].id : null
}

output "policy_policy_id" {
  value = var.create_policy ? aws_iam_policy.policy[0].policy_id : null
}

output "policy_tags_all" {
  value = var.create_policy ? aws_iam_policy.policy[0].tags_all : null
}