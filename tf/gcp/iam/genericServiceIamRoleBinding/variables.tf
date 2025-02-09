variable "projectId" {
  type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "serviceAccountAccountId" {
  type = string
}

variable "serviceAccountDisabled" {
  type = bool
  default = false
}

variable "serviceAccountCreateIgnoreAlreadyExists" {
  type = bool
  default = true
}

variable "iamBindingRole" {
  type = string
}

variable "iamBindingMembers" {
  type = list(string)
}