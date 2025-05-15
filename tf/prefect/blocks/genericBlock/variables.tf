variable "prefectAccountId" {
  type    = string
  default = null
}

variable "prefectWorkspaceId" {
  type    = string
  default = null
}

variable "prefectApiKey" {
  type      = string
  sensitive = true
  default = null
}

#https://registry.terraform.io/providers/PrefectHQ/prefect/latest/docs/resources/block#schema

#Dependent on prefectBlockTypeSlug, use "prefect block type inspect <slug>" to see the required format

variable "blockObjects" {
  type = list(object({
    data         = map(string)
    name         = string
    type_slug    = string
    account_id   = optional(string, null)
    workspace_id = optional(string, null)
  }))
}