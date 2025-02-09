variable "projectId" {
  type = string
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

#https://cloud.google.com/build/docs/automating-builds/github/connect-repo-github?generation=2nd-gen#connecting_a_github_host_programmatically
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

variable "serviceAccountEmail" {
  type = string
}

variable "connectionDisabled" {
  type    = bool
  default = false
}

variable "repositoryRemoteUri" {
  type = string
}