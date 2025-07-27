variable "create_role" {
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

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role 

variable "role_object" {
  type = object({

    policy_statements = list(object({
      Effect    = string
      Principal = map(string)
      Action    = string
    }))

    description           = optional(string, null)
    force_detach_policies = optional(bool, null)
    max_session_duration  = optional(number, null)
    name                  = optional(string, null)
    name_prefix           = optional(string, null)
    path                  = optional(string, null)
    permissions_boundary  = optional(string, null)
  })
  default = null
}