variable "projectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "roleId" {
  type = string
}

variable "resourceName" {
  type = string
}

variable "rolePermissions" {
  type = list(string)
}

variable "roleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.roleStage)
    error_message = "Variable roleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
}