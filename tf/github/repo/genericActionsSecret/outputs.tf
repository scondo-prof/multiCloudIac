output "secretCreatedAt" {
  value = github_actions_secret.secret.created_at
}

output "secretUpdatedAt" {
  value = github_actions_secret.secret.updated_at
}