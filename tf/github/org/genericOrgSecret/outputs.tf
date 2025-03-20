output "secretCreatedAt" {
  value = github_actions_organization_secret.secret.created_at
}

output "secretUpdatedAt" {
  value = github_actions_organization_secret.secret.updated_at
}

output "secretName" {
  value = github_actions_organization_secret.secret.secret_name
}

output "secretEncryptedValue" {
  value = github_actions_organization_secret.secret.encrypted_value
}

output "secretPlaintextValue" {
  value = github_actions_organization_secret.secret.plaintext_value
}