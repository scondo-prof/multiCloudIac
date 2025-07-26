variable "create_sg" {
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

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#argument-reference

variable "sg_object" {
  type = object({
    description = optional(string, null)

    egress = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#egress
      from_port        = number
      to_port          = number
      cidr_blocks      = optional(list(string), null)
      description      = optional(string, null)
      ipv6_cidr_blocks = optional(list(string), null)
      prefix_list_ids  = optional(list(string), null)
      protocol         = string
      security_groups  = optional(list(string), null)
      self             = optional(bool, null)
    })), null)

    ingress = optional(list(object({ #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#ingress
      from_port        = number
      to_port          = number
      protocol         = string
      cidr_blocks      = optional(list(string), null)
      description      = optional(string, null)
      ipv6_cidr_blocks = optional(list(string), null)
      prefix_list_ids  = optional(list(string), null)
      security_groups  = optional(list(string), null)
      self             = optional(bool, null)
    })), null)

    name                   = optional(string, null)
    name_prefix            = optional(string, null)
    revoke_rules_on_delete = optional(bool, null)
    vpc_id                 = optional(string, null)
  })
  default = null
}