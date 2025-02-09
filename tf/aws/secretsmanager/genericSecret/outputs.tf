output "secretArn" {
  value = aws_secretsmanager_secret.secret.arn
}

output "secretName" {
  value = aws_secretsmanager_secret.secret.name
}