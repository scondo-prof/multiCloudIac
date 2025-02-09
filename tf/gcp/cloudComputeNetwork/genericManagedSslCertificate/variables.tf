variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_managed_ssl_certificate#argument-reference
variable "mscDescription" {
  type    = string
  default = null
}

variable "resourceName" {
  type = string
}

variable "mscManaged" {
  type = object({
    domains = list(string)
  })
  default = null
}

variable "mscType" {
  type = string
  validation {
    condition = var.mscType == null || can(contains([
      "MANAGED"
    ], var.mscType))
    error_message = "Valid inputs for | variable: var.mscType | are: MANAGED"
  }
  default = null
}