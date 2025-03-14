variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type = string
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
  description = "List of firewall rules to apply."
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}



variable "firewallDirection" {
  type = string
  validation {
    condition = contains(["INGRESS", "EGRESS"], var.firewallDirection)
    error_message = "Variable firewallDirection must contain one of the following values: INGRESS, EGRESS"
  }
  default = "INGRESS"
}

variable "firewallDisabled" {
  type = bool
  default = false
}


variable "firewallPriority" {
  type = number
  validation {
    condition = var.firewallPriority >= 0 && var.firewallPriority <= 65535
    error_message = "value"
  }
  default = 1000
}

variable "firewallSourceRanges" {
  type = list(string)
}