output "SWVFF_SecretArn" {
  value = module.secret.secretArn
}

output "SWVFF_SecretName" {
  value = module.secret.secretName
}

output "SWVFF_SecretVersionId" {
  value = module.secretVersion.secretVersionId
}