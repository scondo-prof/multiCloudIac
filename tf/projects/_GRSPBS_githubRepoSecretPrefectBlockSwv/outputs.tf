output "GRSPBS_GithubActionsSecretCreatedAt" {
  value = module.githubActionsSecret.secretCreatedAt
}

output "GRSPBS_GithubActionsSecretUpdatedAt" {
  value = module.githubActionsSecret.secretUpdatedAt
}

output "GRSPBS_GithubActionsSecretPlaintextValue" {
  value     = module.githubActionsSecret.secretPlaintextValue
  sensitive = true
}

output "GRSPBS_GithubActionsSecretEncryptedValue" {
  value     = module.githubActionsSecret.secretEncryptedValue
  sensitive = true
}

output "GRSPBS_GithubActionsSecretName" {
  value     = module.githubActionsSecret.secretName
  sensitive = true
}

#---
output "GRSPBS_PrefectBlockCreated" {
  value = module.prefectBlock.blockCreated
}

output "GRSPBS_PrefectBlockId" {
  value = module.prefectBlock.blockId
}

output "GRSPBS_PrefectBlockUpdated" {
  value = module.prefectBlock.blockUpdated
}

output "GRSPBS_PrefectBlockName" {
  value = module.prefectBlock.blockName
}

output "GRSPBS_PrefectBlockData" {
  value     = module.prefectBlock.blockData
  sensitive = true
}

#---
output "GRSPBS_SWV_SecretArn" {
  value = module.SWV.SWV_SecretArn
}

output "GRSPBS_SWV_SecretName" {
  value = module.SWV.SWV_SecretName
}

output "GRSPBS_SWV_SecretVersionId" {
  value = module.SWV.SWV_SecretVersionId
}

#---
