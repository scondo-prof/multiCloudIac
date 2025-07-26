output "role_arn" {
  value = var.create_role ? aws_iam_role.role[0].arn : null
}

output "role_create_date" {
  value = var.create_role ? aws_iam_role.role[0].create_date : null
}

output "role_id" {
  value = var.create_role ? aws_iam_role.role[0].id : null
}

output "role_name" {
  value = var.create_role ? aws_iam_role.role[0].name : null
}

output "role_tags_all" {
  value = var.create_role ? aws_iam_role.role[0].tags_all : null
}

output "role_unique_id" {
  value = var.create_role ? aws_iam_role.role[0].unique_id : null
}