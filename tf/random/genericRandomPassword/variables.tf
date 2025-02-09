#https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password#schema

variable "passwordLength" {
  type = number
  validation {
    condition     = var.passwordLength >= 1 && var.passwordLength <= 1024
    error_message = "var.passwordLength must be Greater than or Equal to 1 AND Less Than or Equal to 1024"
  }
}

variable "passwordKeepers" {
  type    = map(string)
  default = null
}

variable "passwordLower" {
  type    = bool
  default = null
}

variable "passwordMinLower" {
  type = number
  validation {
    condition     = var.passwordMinLower == null || can(var.passwordMinLower >= 0 && var.passwordMinLower <= 1024)
    error_message = "var.passwordMinLower must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "passwordMinNumeric" {
  type = number
  validation {
    condition     = var.passwordMinNumeric == null || can(var.passwordMinNumeric >= 0 && var.passwordMinNumeric <= 1024)
    error_message = "var.passwordMinNumeric must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "passwordMinSpecial" {
  type = number
  validation {
    condition     = var.passwordMinSpecial == null || can(var.passwordMinSpecial >= 0 && var.passwordMinSpecial <= 1024)
    error_message = "var.passwordMinSpecial must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "passwordMinUpper" {
  type = number
  validation {
    condition     = var.passwordMinUpper == null || can(var.passwordMinUpper >= 0 && var.passwordMinUpper <= 1024)
    error_message = "var.passwordMinUpper must be Greater than or Equal to 0 AND Less Than or Equal to 1024"
  }
  default = null
}

variable "passwordNumeric" {
  type    = bool
  default = null
}

variable "passwordOverrideSpecial" {
  type    = string
  default = null
}

variable "passwordSpecial" {
  type    = bool
  default = null
}

variable "passwordUpper" {
  type    = bool
  default = null
}