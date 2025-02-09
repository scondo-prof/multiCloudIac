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

variable "secretVisibility" {
  type = string
  validation {
    condition     = contains(["all", "private", "selected"], var.secretVisibility)
    error_message = "Variable secretVisibility can only be set to the following values: all, private, selected"
  }
  default = "private"
}

variable "secretPlaintextValue" {
  type      = string
  sensitive = true
}

variable "secretRepositoryIds" {
  type    = list(string)
  default = null
}