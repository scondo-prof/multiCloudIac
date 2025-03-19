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
# https://registry.terraform.io/providers/PrefectHQ/prefect/latest/docs/resources/service_account#schema

variable "serviceAccountId" {
  type = string
  default = null
}

variable "serviceAccountRoleName" {
  type = string
  validation {
    condition = contains(["Admin", "Member", "Owner"], var.serviceAccountRoleName)
    error_message = "Ensure Variable serviceAccountRoleName is one of the following values: Admin, Member, Owner"
  }
  default = null
}

variable "serviceAccountApiKeyExpiration" {
  type = string
  default = null
}

variable "serviceAccountOldKeyExpiresInSeconds" {
  type = number
  default = null
}