variable "tlsProxy" { #https://registry.terraform.io/providers/hashicorp/tls/latest/docs#optional
  type = object({
    from_env = optional(bool, null)
    password = optional(string, null)
    url      = optional(string, null)
    username = optional(string, null)
  })
  default = null
}

variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/PKS_Password#schema

variable "PKS_PasswordLength" {
  type = number
  validation {
    condition     = var.PKS_PasswordLength >= 1 && var.PKS_PasswordLength <= 1024
    error_message = "var.PKS_PasswordLength must be Greater than or Equal to 1 AND Less Than or Equal to 1024"
  }
}

variable "PKS_PasswordKeepers" {
  type    = map(string)
  default = null
}

variable "PKS_PasswordLower" {
  type    = bool
  default = null
}

variable "PKS_PasswordMinLower" {
  type = number
  validation {
    condition     = var.PKS_PasswordMinLower == null || can(var.PKS_PasswordMinLower >= 0 && var.PKS_PasswordMinLower <= 1024)
    error_message = "var.PKS_PasswordMinLower must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "PKS_PasswordMinNumeric" {
  type = number
  validation {
    condition     = var.PKS_PasswordMinNumeric == null || can(var.PKS_PasswordMinNumeric >= 0 && var.PKS_PasswordMinNumeric <= 1024)
    error_message = "var.PKS_PasswordMinNumeric must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "PKS_PasswordMinSpecial" {
  type = number
  validation {
    condition     = var.PKS_PasswordMinSpecial == null || can(var.PKS_PasswordMinSpecial >= 0 && var.PKS_PasswordMinSpecial <= 1024)
    error_message = "var.PKS_PasswordMinSpecial must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "PKS_PasswordMinUpper" {
  type = number
  validation {
    condition     = var.PKS_PasswordMinUpper == null || can(var.PKS_PasswordMinUpper >= 0 && var.PKS_PasswordMinUpper <= 1024)
    error_message = "var.PKS_PasswordMinUpper must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "PKS_PasswordNumeric" {
  type    = bool
  default = null
}

variable "PKS_PasswordOverrideSpecial" {
  type    = string
  default = null
}

variable "PKS_PasswordSpecial" {
  type    = bool
  default = null
}

variable "PKS_PasswordUpper" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

variable "PKS_PrivateKeyAlgorithm" {
  type = string
  validation {
    condition = contains([
      "RSA",
      "ECDSA",
      "ED25519"
    ], var.PKS_PrivateKeyAlgorithm)
    error_message = "Valid inputs for | variable: var.PKS_PrivateKeyAlgorithm | are: RSA, ECDSA, ED25519"
  }
}

variable "PKS_PrivateKeyEcdsaCurve" {
  type = string
  validation {
    condition = var.PKS_PrivateKeyEcdsaCurve == null || can(contains([
      "P224",
      "P256",
      "P384",
      "P521"
    ], var.PKS_PrivateKeyEcdsaCurve))
    error_message = "Valid inputs for | variable: var.PKS_PrivateKeyEcdsaCurve | are: P224, P256, P384, P521"
  }
  default = null
}

variable "PKS_PrivateKeyRsaBits" {
  type    = number
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/PKS_SWV_Secretsmanager_PKS_SWV_Secret#argument-reference

variable "PKS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "PKS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "PKS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "PKS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "PKS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "PKS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "PKS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "PKS_SWV_PrivateKeyP8FilePath" {
  type = string
  default = null
}
variable "PKS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "PKS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "PKS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}



#---


# variable "tlsProxy" { #https://registry.terraform.io/providers/hashicorp/tls/latest/docs#optional
#   type = object({
#     from_env = optional(bool, null)
#     password = optional(string, null)
#     url      = optional(string, null)
#     username = optional(string, null)
#   })
#   default = null
# }

# variable "awsRegion" {
#   type    = string
#   default = "us-east-1"
# }

# variable "resourceName" {
#   type = string
# }

# variable "projectName" {
#   type = string
# }

# variable "creator" {
#   type    = string
#   default = "Scott Condo"
# }

# variable "deployedDate" {
#   type = string
# }

# variable "additionalTags" {
#   type    = map(string)
#   default = {}
# }

# #---

# #https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/PKS_Password#schema

# variable "PKS_PasswordLength" {
#   type = number
#   validation {
#     condition     = var.PKS_PasswordLength >= 1 && var.PKS_PasswordLength <= 1024
#     error_message = "var.PKS_PasswordLength must be Greater than or Equal to 1 AND Less Than or Equal to 1024"
#   }
# }

# variable "PKS_PasswordKeepers" {
#   type    = map(string)
#   default = null
# }

# variable "PKS_PasswordLower" {
#   type    = bool
#   default = null
# }

# variable "PKS_PasswordMinLower" {
#   type = number
#   validation {
#     condition     = var.PKS_PasswordMinLower == null || can(var.PKS_PasswordMinLower >= 0 && var.PKS_PasswordMinLower <= 1024)
#     error_message = "var.PKS_PasswordMinLower must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
#   }
#   default = null
# }

# variable "PKS_PasswordMinNumeric" {
#   type = number
#   validation {
#     condition     = var.PKS_PasswordMinNumeric == null || can(var.PKS_PasswordMinNumeric >= 0 && var.PKS_PasswordMinNumeric <= 1024)
#     error_message = "var.PKS_PasswordMinNumeric must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
#   }
#   default = null
# }

# variable "PKS_PasswordMinSpecial" {
#   type = number
#   validation {
#     condition     = var.PKS_PasswordMinSpecial == null || can(var.PKS_PasswordMinSpecial >= 0 && var.PKS_PasswordMinSpecial <= 1024)
#     error_message = "var.PKS_PasswordMinSpecial must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
#   }
#   default = null
# }

# variable "PKS_PasswordMinUpper" {
#   type = number
#   validation {
#     condition     = var.PKS_PasswordMinUpper == null || can(var.PKS_PasswordMinUpper >= 0 && var.PKS_PasswordMinUpper <= 1024)
#     error_message = "var.PKS_PasswordMinUpper must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
#   }
#   default = null
# }

# variable "PKS_PasswordNumeric" {
#   type    = bool
#   default = null
# }

# variable "PKS_PasswordOverrideSpecial" {
#   type    = string
#   default = null
# }

# variable "PKS_PasswordSpecial" {
#   type    = bool
#   default = null
# }

# variable "PKS_PasswordUpper" {
#   type    = bool
#   default = null
# }

# #---

# #https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

# variable "PKS_PrivateKeyAlgorithm" {
#   type = string
#   validation {
#     condition = contains([
#       "RSA",
#       "ECDSA",
#       "ED25519"
#     ], var.PKS_PrivateKeyAlgorithm)
#     error_message = "Valid inputs for | variable: var.PKS_PrivateKeyAlgorithm | are: RSA, ECDSA, ED25519"
#   }
# }

# variable "PKS_PrivateKeyEcdsaCurve" {
#   type = string
#   validation {
#     condition = var.PKS_PrivateKeyEcdsaCurve == null || can(contains([
#       "P224",
#       "P256",
#       "P384",
#       "P521"
#     ], var.PKS_PrivateKeyEcdsaCurve))
#     error_message = "Valid inputs for | variable: var.PKS_PrivateKeyEcdsaCurve | are: P224, P256, P384, P521"
#   }
#   default = null
# }

# variable "PKS_PrivateKeyRsaBits" {
#   type    = number
#   default = null
# }

# #---


# variable "PKS_SWV_SecretKmsKeyId" {
#   type    = string
#   default = null
# }

# variable "PKS_SWV_SecretPolicy" {
#   type    = string
#   default = null
# }

# variable "PKS_SWV_SecretRecoveryWindowInDays" {
#   type    = number
#   default = 7
# }

# variable "PKS_SWV_SecretReplica" {
#   type = object({
#     kms_key_id = string
#     region     = string
#   })
#   default = null
# }

# variable "PKS_SWV_SecretForceSecretOverwrite" {
#   type    = bool
#   default = true
# }

# variable "PKS_privateKeyP8FilePath" {
#   type    = string
#   default = null
# }

# variable "PKS_SWV_SecretVersionSecretString" {
#   type    = map(string)
#   default = {}
# }

# variable "PKS_SWV_SecretVersionSecretBinary" {
#   type    = string
#   default = null
# }

# variable "PKS_SWV_SecretVersionStages" {
#   type    = list(string)
#   default = null
# }

# #---
