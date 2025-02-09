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
  secret_name             = "${var.resourceName}_secret"
  visibility              = var.secretVisibility
  plaintext_value         = var.secretPlaintextValue
  selected_repository_ids = var.secretRepositoryIds
}