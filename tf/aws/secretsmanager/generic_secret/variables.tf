variable "create_secret" {
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

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "secret_object" {
  type = object({
    description             = optional(string, null)
    kms_key_id              = optional(string, null)
    name                    = optional(string, null)
    name_prefix             = optional(string, null)
    policy                  = optional(string, null)
    recovery_window_in_days = optional(number, null)

    replica = optional(list(object({
      kms_key_id = optional(string, null)
      region     = string
    })), null)

    force_overwrite_replica_secret = optional(bool, null)
  })
  default = null
}