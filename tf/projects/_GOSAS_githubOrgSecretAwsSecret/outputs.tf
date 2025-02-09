output "GOSAS_GhOrgSecretName" {
  value = module.ghOrgSecret.secretName
}

output "GOSAS_GhOrgSecretPlainTextValue" {
  value     = module.ghOrgSecret.secretPlainTextValue
  sensitive = true
}

output "GOSAS_AwsSecretArn" {
  value = module.awsSecret.secretArn
}

output "GOSAS_AwsSecretName" {
  value = module.awsSecret.secretName
}

output "GOSAS_AwsSecretVersionId" {
  value = module.awsSecret.secretVersionId
}