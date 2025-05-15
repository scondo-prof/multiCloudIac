variable "prefectAccountId" {
  type    = string
  default = "9759ff6b-6f30-404f-92f3-02c593f6f7aa"
}

variable "prefectWorkspaceId" {
  type    = string
  default = "1733fd7b-18ad-4093-a0a1-4f128be45747"
}

variable "prefectApiKey" {
  type      = string
  sensitive = true
}

variable "resourceName" {
  type = string
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