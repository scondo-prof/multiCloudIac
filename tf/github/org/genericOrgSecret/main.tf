terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = var.githubOrganization
  token = var.githubToken
}

resource "github_actions_organization_secret" "secret" {
  secret_name             = upper(replace("${var.resourceName}_SECRET", "-", "_"))
  encrypted_value         = var.secretEncryptedValue
  plaintext_value         = var.secretPlaintextValue
  visibility              = var.secretVisibility
  selected_repository_ids = var.secretSelectedRepositoryIds
}