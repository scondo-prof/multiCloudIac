variable "githubToken" {
  type      = string
  sensitive = true
  default   = null
}

variable "githubBaseUrl" {
  type    = string
  default = null
}

variable "githubOwner" {
  type    = string
  default = null
}

variable "githubAppAuth" {
  type = object({
    id              = string
    installation_id = string
    pem_file_path   = string
  })
}

variable "githubWriteDelayMs" {
  type    = number
  default = null
}

variable "githubRetryDelayMs" {
  type    = number
  default = null
}

variable "githubReadDelayMs" {
  type    = number
  default = null
}

variable "githubRetryableErrors" {
  type    = list(number)
  default = null
}

variable "githubMaxRetries" {
  type    = number
  default = null
}

#https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_organization_secret#argument-reference

variable "secretObject" {
  type = list(object({
    secret_name     = string
    encrypted_value = optional(string, null)
    plaintext_value = optional(string, null)
  }))
  sensitive = true
}

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