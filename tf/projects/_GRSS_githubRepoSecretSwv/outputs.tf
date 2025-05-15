output "GRSS_GithubActionsSecretCreatedAt" {
  value = module.githubActionsSecret.secretCreatedAt
}

output "GRSS_GithubActionsSecretUpdatedAt" {
  value = module.githubActionsSecret.secretUpdatedAt
}

#---
output "GRSS_SWV_SecretArn" {
  value = module.SWV.SWV_SecretArn
}

output "GRSS_SWV_SecretName" {
  value = module.SWV.SWV_SecretName
}

output "GRSS_SWV_SecretVersionId" {
  value = module.SWV.SWV_SecretVersionId
}

#---
