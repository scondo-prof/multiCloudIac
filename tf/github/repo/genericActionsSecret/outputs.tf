output "secretCreatedAt" {
  value = github_actions_secret.secret[*].created_at
}

output "secretUpdatedAt" {
  value = github_actions_secret.secret[*].updated_at
}

output "secretPlaintextValue" {
  value = github_actions_secret.secret[*].plaintext_value
  sensitive = true
}

output "secretEncryptedValue" {
  value = github_actions_secret.secret[*].encrypted_value
  sensitive = true
}

output "secretName" {
  value = github_actions_secret.secret[*].secret_name
  sensitive = true
}