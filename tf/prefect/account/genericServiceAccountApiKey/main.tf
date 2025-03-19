terraform {
  required_providers {
    prefect = {
      source = "prefecthq/prefect"
      version = "~> 2.0"
    }
  }
}

provider "prefect" {
  account_id   = var.prefectAccountId
  workspace_id = var.prefectWorkspaceId
  api_key      = var.prefectApiKey
}

resource "prefect_service_account" "serviceAccount" {
    name = "${var.resourceName}-service-account"
    account_id = var.serviceAccountId
    account_role_name = var.serviceAccountRoleName
    api_key_expiration = var.serviceAccountApiKeyExpiration
    old_key_expires_in_seconds = var.serviceAccountOldKeyExpiresInSeconds
}