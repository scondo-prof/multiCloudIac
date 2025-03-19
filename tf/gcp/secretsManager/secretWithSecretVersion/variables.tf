variable "projectId" {
  type    = string
  default = "p3-prod-aa94d"
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "secretVersionSecretData" {
  type = string
}

variable "secretVersionEnabled" {
  type    = bool
  default = true
}

variable "secretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.secretVersionDeletionPolicy)
    error_message = "The only valid options for secretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}