variable "projectId" {
  type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "firewallNetwork" {
  type = string
}

variable "firewallRules" {
  description = "List of firewall rules to apply."
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
  default = [
    {
      protocol = "tcp"
      ports = [ "22", "3389" ]
    }
  ]
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