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
  default = null
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

# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret#argument-reference

variable "secretObjects" {
  type = list(object({
    secret_name     = string
    encrypted_value = optional(string, null)
    plaintext_value = optional(string, null)
  }))
  sensitive = true
  default = []
}

variable "secretRepository" {
  type = string
}