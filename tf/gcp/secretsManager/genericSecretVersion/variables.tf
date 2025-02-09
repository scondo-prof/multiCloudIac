variable "projectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "secretVersionSecretData" {
  type = string
}

variable "secretVersionSecret" {
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