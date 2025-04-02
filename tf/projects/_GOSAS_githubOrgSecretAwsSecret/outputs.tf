output "GOSAS_GhOrgSecretCreatedAt" {
  value = module.ghOrgSecret.secretCreatedAt
}

output "GOSAS_GhOrgSecretUpdatedAt" {
  value = module.ghOrgSecret.secretUpdatedAt
}

output "GOSAS_GhOrgSecretName" {
  value = module.ghOrgSecret.secretName
}

output "GOSAS_GhOrgSecretEncryptedValue" {
  value = module.ghOrgSecret.secretEncryptedValue
}

output "GOSAS_GhOrgSecretPlaintextValue" {
  value = module.ghOrgSecret.secretPlaintextValue
}

#---
output "GOSAS_SWV_SecretArn" {
  value = module.SWV.SWV_SecretArn
}

output "GOSAS_SWV_SecretName" {
  value = module.SWV.SWV_SecretName
}

output "GOSAS_SWV_SecretVersionId" {
  value = module.SWV.SWV_SecretVersionId
}

#---
