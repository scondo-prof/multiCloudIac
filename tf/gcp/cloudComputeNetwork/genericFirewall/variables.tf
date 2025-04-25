variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#argument-reference

variable "firewallObjects" {
  type = list(object({
    name    = string
    network = string

    allow = optional(list(object({
      protocol = string
      ports    = optional(list(string), null)
    })), null)

    deny = optional(list(object({
      protocol = string
      ports    = optional(list(string), null)
    })), null)

    description = optional(string, null)
    destination_ranges = optional(list(string), null)
    direction = optional(string, null)
    disabled = optional(bool, null)
  }))
}

variable "firewallLogConfig" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_log_config
  type = object({
    metadata = string
  })
  default = null
}

variable "firewallPriority" {
  type = number
  validation {
    condition     = var.firewallPriority == null || can(var.firewallPriority >= 0 && var.firewallPriority <= 65535)
    error_message = "var.firewallPriority must be Greater than or Equal to 0 AND Less Than or Equal to 65535"
  }
  default = null
}

variable "firewallSourceRanges" {
  type    = list(string)
  default = null
}

variable "firewallSourceServiceAccounts" {
  type    = list(string)
  default = null
}

variable "firewallSourceTags" {
  type    = list(string)
  default = null
}

variable "firewallTargetServiceAccounts" {
  type    = list(string)
  default = null
}

variable "firewallTargetTags" {
  type    = list(string)
  default = null
}