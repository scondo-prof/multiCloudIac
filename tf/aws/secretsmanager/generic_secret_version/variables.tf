variable "create_secret_version" {
  type    = bool
  default = true
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "secret_version_object" {
  type = object({
    secret_id      = string
    secret_string  = optional(map(string), null)
    secret_binary  = optional(string, null)
    version_stages = optional(list(string), null)
  })
  default = null
}