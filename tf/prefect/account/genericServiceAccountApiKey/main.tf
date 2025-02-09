terraform {
  required_providers {
    prefect = {
      source = "prefecthq/prefect"
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
    account_role_name = var.serviceAccountRoleName
    api_key_expiration = var.serviceAccountApiKeyExpiration
}