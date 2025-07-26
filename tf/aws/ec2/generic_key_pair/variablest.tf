variable "create_key_pair" {
  type    = bool
  default = true
}

variable "resource_name" {
  type = string
}

variable "project_name" {
  description = "The GitLab Namespace Slug (Automatically Allocated)"
  type        = string
}

variable "created_by" {
  description = "The GitLab Commit Author (Automatically Allocated)"
  type        = string
  default     = "automation"
}

variable "terraform_repository" {
  description = "The GitLab Project (Automatically Allocated)"
  type        = string
}

variable "environment" {
  description = "The GitLab Commit Branch (Automatically Allocated)"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the ECR repository"
  type        = map(string)
  default     = {}
}

# https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

variable "private_key_object" {
  type = object({
    algorithm   = string
    ecdsa_curve = optional(string, null)
    rsa_bits    = optional(number, null)
  })
  default = null
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair#argument-reference

variable "key_pair_object" {
  type = object({
    key_name        = optional(string, null)
    key_name_prefix = optional(string, null)
  })
  default = null
}