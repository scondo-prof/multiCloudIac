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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network#argument-reference

variable "networkDescription" {
  type = string
  default = null
}

variable "networkAutoCreateSubNetworks" {
  type    = bool
  default = null
}

variable "networkRoutingMode" {
  type = string
  validation {
    condition = var.networkRoutingMode == null || can(contains([
    "REGIONAL",
    "GLOBAL"
], var.networkRoutingMode))
    error_message = "Valid inputs for | variable: var.networkRoutingMode | are: REGIONAL, GLOBAL"
  }
  default = null
}

variable "networkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition = var.networkMaximumTransmissionUnitBytes == null || can(var.networkMaximumTransmissionUnitBytes >= 1300 && var.networkMaximumTransmissionUnitBytes <= 8896)
    error_message = "var.networkMaximumTransmissionUnitBytes must be Greater than or Equal to 1300 AND Less Than or Equal to 8896"
  }
  default = null
}

variable "networkEnableUlaInternalIpv6" {
  type = bool
  default = null
}

variable "networkInternalIpv6Range" {
  type = string
  default = null
}

variable "networkFirewallPolicyEnforcementOrder" {
  type = string
  validation {
    condition = var.networkFirewallPolicyEnforcementOrder == null || can(contains([
    "BEFORE_CLASSIC_FIREWALL",
    "AFTER_CLASSIC_FIREWALL"
], var.networkFirewallPolicyEnforcementOrder))
    error_message = "Valid inputs for | variable: var.networkFirewallPolicyEnforcementOrder | are: BEFORE_CLASSIC_FIREWALL, AFTER_CLASSIC_FIREWALL"
  }
  default = null
}

variable "networkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}