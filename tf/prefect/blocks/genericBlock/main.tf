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

resource "prefect_block" "block" {
  count        = length(var.blockObjects)
  data         = jsonencode(var.blockObjects[count.index]["data"])
  name         = "${var.blockObjects[count.index]["name"]}-prefect-block"
  type_slug    = var.blockObjects[count.index]["type_slug"]
  account_id   = var.blockObjects[count.index]["account_id"]
  workspace_id = var.blockObjects[count.index]["workspace_id"]
}