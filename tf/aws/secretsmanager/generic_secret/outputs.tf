output "secret_id" {
  value = var.create_secret ? aws_secretsmanager_secret.secret[0].id : null
}

output "secret_arn" {
  value = var.create_secret ? aws_secretsmanager_secret.secret[0].arn : null
}

output "secret_replica" {
  value = var.create_secret ? aws_secretsmanager_secret.secret[0].replica : null
}

output "secret_tags_all" {
  value = var.create_secret ? aws_secretsmanager_secret.secret[0].tags_all : null
}