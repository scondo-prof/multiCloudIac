variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#argument-reference

variable "ecrRepositoryEncryptionConfiguration" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository#encryption_configuration
  type = object({
    encryption_type = optional(string, null)
    kms_key         = optional(string, null)
  })
  default = null
}

variable "ecrRepositoryForceDelete" {
  type    = bool
  default = null
}

variable "ecrRepositoryImageTagMutability" {
  type = string
  validation {
    condition = var.ecrRepositoryImageTagMutability == null || can(contains([
      "MUTABLE  IMMUTABLE"
    ], var.ecrRepositoryImageTagMutability))
    error_message = "Valid inputs for | variable: var.ecrRepositoryImageTagMutability | are: MUTABLE or IMMUTABLE"
  }
  default = null
}

variable "ecrRepositoryImageScanningConfiguration" {
  type = object({
    scan_on_push = bool
  })
  default = null
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}