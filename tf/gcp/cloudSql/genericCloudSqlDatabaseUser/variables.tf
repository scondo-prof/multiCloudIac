variable "projectId" {
  type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "databseInstance" {
  type = string
}

variable "resourceName" {
  type = string
}

variable "userPassword" {
  type = string
}

variable "userType" {
  type = string
  default = "BUILT-IN"
}

variable "userDeletionPolicy" {
  type = string
  validation {
    condition = contains(["ABANDON"], var.userDeletionPolicy)
    error_message = "Variable userDeletionPolicy must be the value ABANDON or null"
  }
  default = "ABANDON"
}