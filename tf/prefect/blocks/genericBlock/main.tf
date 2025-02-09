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

resource "prefect_block" "prefectBlock" {
  data      = jsonencode(var.prefectBlockData)
  name      = "${var.resourceName}-prefect-block"
  type_slug = var.prefectBlockTypeSlug
}