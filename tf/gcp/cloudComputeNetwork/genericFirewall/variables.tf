variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#argument-reference

variable "firewallNetwork" {
  type = string
}

variable "firewallRulesAllow" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_allow
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "firewallDeny" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall#nested_deny
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "firewallDescription" {
  type    = string
  default = null
}

variable "firewallDestinationRanges" {
  type    = list(string)
  default = null
}

variable "firewallDirection" {
  type = string
  validation {
    condition = var.firewallDirection == null || can(contains([
      "INGRESS",
      "EGRESS"
    ], var.firewallDirection))
    error_message = "Valid inputs for | variable: var.firewallDirection | are: INGRESS, EGRESS"
  }
  default = null
}

variable "firewallDisabled" {
  type    = bool
  default = null
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