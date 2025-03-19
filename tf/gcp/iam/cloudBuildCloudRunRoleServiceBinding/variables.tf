variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "serviceAccountAccountId" {
  type = string
}

variable "serviceAccountDisabled" {
  type    = bool
  default = false
}

variable "serviceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "roleId" {
  type = string
}

variable "roleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.roleStage)
    error_message = "Variable roleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
}