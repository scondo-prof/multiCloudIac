output "secretVersionId" {
  value = aws_secretsmanager_secret_version.secretVersion.version_id
}