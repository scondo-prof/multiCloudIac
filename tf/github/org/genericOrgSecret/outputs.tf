output "secretName" {
  value = github_actions_organization_secret.secret.secret_name
}

output "secretPlainTextValue" {
  value     = github_actions_organization_secret.secret.plaintext_value
  sensitive = true
}