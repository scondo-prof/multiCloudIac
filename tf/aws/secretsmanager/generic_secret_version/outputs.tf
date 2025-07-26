output "secret_version_arn" {
  value = var.create_secret_version ? aws_secretsmanager_secret_version.secret_version[0].arn : null
}

output "secret_version_id" {
  value = var.create_secret_version ? aws_secretsmanager_secret_version.secret_version[0].id : null
}

output "secret_version_version_id" {
  value = var.create_secret_version ? aws_secretsmanager_secret_version.secret_version[0].version_id : null
}