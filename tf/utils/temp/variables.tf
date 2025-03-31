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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account#argument-reference

variable "cloudbuildTriggerServiceAccountAccountId" {
  type = string
}

variable "cloudbuildTriggerServiceAccountDisabled" {
  type    = bool
  default = null
}

variable "cloudbuildTriggerServiceAccountDescription" {
  type    = string
  default = null
}

variable "cloudbuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_iam_custom_role#argument-reference

variable "roleId" {
  type = string
}

variable "rolePermissions" {
  type = list(string)
}

variable "roleStage" {
  type = string
  validation {
    condition = var.roleStage == null || can(contains([
      "ALPHA",
      "BETA",
      "GA",
      "DEPRECATED",
      "DISABLED",
      "EAP"
    ], var.roleStage))
    error_message = "Valid inputs for | variable: var.roleStage | are: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = null
}

variable "roleDescription" {
  type    = string
  default = null
}



variable "iamBindingRole" {
  type = string
}

variable "iamBindingMembers" {
  type = list(string)
}




#---
