variable "create_policy" {
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

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy#argument-reference

variable "policy_object" {
  type = object({
    description = optional(string, null)
    name_prefix = optional(string, null)
    name        = optional(string, null)
    path        = optional(string, null)

    policy_statements = list(object({
      Sid      = string
      Action   = list(string)
      Resource = list(string)
      Effect   = string
    }))

  })
  default = null
}