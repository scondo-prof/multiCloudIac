output "SWV_SecretArn" {
  value = module.secret.secretArn
}

output "SWV_SecretName" {
  value = module.secret.secretName
}

output "SWV_SecretVersionId" {
  value = module.secretVersion.secretVersionId
}