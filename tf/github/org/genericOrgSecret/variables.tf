variable "githubOrganization" {
  type    = string
  default = "Bear-Cognition"
}

variable "githubToken" {
  type      = string
  sensitive = true
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret#argument-reference

variable "secretEncryptedValue" {
  type      = string
  default   = null
  sensitive = true
}

variable "secretPlaintextValue" {
  type      = string
  default   = null
  sensitive = true
}

variable "secretVisibility" {
  type = string
  validation {
    condition = contains([
      "all",
      "private",
      "selected"
    ], var.secretVisibility)
    error_message = "Valid inputs for | variable: var.secretVisibility | are: all, private, selected"
  }
}

variable "secretSelectedRepositoryIds" {
  type    = list(string)
  default = null
}