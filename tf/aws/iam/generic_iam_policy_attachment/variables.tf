variable "create_pa" {
  type    = bool
  default = true
}

variable "resource_name" {
  type = string
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment#argument-reference

variable "pa_objects" {
  type = object({
    users      = optional(list(string), null)
    roles      = optional(list(string), null)
    groups     = optional(list(string), null)
    policy_arn = string
  })
  default = null
}