variable "tlsProxy" { #https://registry.terraform.io/providers/hashicorp/tls/latest/docs#optional
  type = object({
    from_env = optional(bool, null)
    password = optional(string, null)
    url      = optional(string, null)
    username = optional(string, null)
  })
  default = null
}

#https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

variable "privateKeyAlgorithm" {
  type = string
  validation {
    condition = contains([
      "RSA",
      "ECDSA",
      "ED25519"
    ], var.privateKeyAlgorithm)
    error_message = "Valid inputs for | variable: var.privateKeyAlgorithm | are: RSA, ECDSA, ED25519"
  }
}

variable "privateKeyEcdsaCurve" {
  type = string
  validation {
    condition = var.privateKeyEcdsaCurve == null || can(contains([
      "P224",
      "P256",
      "P384",
      "P521"
    ], var.privateKeyEcdsaCurve))
    error_message = "Valid inputs for | variable: var.privateKeyEcdsaCurve | are: P224, P256, P384, P521"
  }
  default = null
}

variable "privateKeyRsaBits" {
  type    = number
  default = null
}