terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  token    = var.githubToken
  base_url = var.githubBaseUrl
  owner    = var.githubOwner
  dynamic "app_auth" {
    for_each = var.githubAppAuth != null ? [var.githubAppAuth] : []
    content {
      id              = app_auth.value["id"]
      installation_id = app_auth.value["installation_id"]
      pem_file        = file(app_auth.value["pem_file_path"])
    }
  }

  write_delay_ms   = var.githubWriteDelayMs
  retry_delay_ms   = var.githubRetryDelayMs
  read_delay_ms    = var.githubReadDelayMs
  retryable_errors = var.githubRetryableErrors
  max_retries      = var.githubMaxRetries
}

resource "github_actions_organization_secret" "secret" {
  count                   = length(var.secretObject)
  secret_name             = upper(replace(var.secretObject[count.index]["secret_name"], "-", "_"))
  encrypted_value         = var.secretObject[count.index]["encrypted_value"]
  plaintext_value         = var.secretObject[count.index]["plaintext_value"]
  visibility              = var.secretVisibility
  selected_repository_ids = var.secretSelectedRepositoryIds
}