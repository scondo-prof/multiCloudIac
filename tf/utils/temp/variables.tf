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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_NWSAF_Network#argument-reference

variable "NWSAF_NetworkDescription" {
  type = string
  default = null
}

variable "NWSAF_NetworkAutoCreateSubNetworks" {
  type    = bool
  default = null
}

variable "NWSAF_NetworkRoutingMode" {
  type = string
  validation {
    condition = var.NWSAF_NetworkRoutingMode == null || can(contains([
    "REGIONAL",
    "GLOBAL"
], var.NWSAF_NetworkRoutingMode))
    error_message = "Valid inputs for | variable: var.NWSAF_NetworkRoutingMode | are: REGIONAL, GLOBAL"
  }
  default = null
}

variable "NWSAF_NetworkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition = var.NWSAF_NetworkMaximumTransmissionUnitBytes == null || can(var.NWSAF_NetworkMaximumTransmissionUnitBytes >= 1300 && var.NWSAF_NetworkMaximumTransmissionUnitBytes <= 8896)
    error_message = "var.NWSAF_NetworkMaximumTransmissionUnitBytes must be Greater than or Equal to 1300 AND Less Than or Equal to 8896"
  }
  default = null
}

variable "NWSAF_NetworkEnableUlaInternalIpv6" {
  type = bool
  default = null
}

variable "NWSAF_NetworkInternalIpv6Range" {
  type = string
  default = null
}

variable "NWSAF_NetworkFirewallPolicyEnforcementOrder" {
  type = string
  validation {
    condition = var.NWSAF_NetworkFirewallPolicyEnforcementOrder == null || can(contains([
    "BEFORE_CLASSIC_FIREWALL",
    "AFTER_CLASSIC_FIREWALL"
], var.NWSAF_NetworkFirewallPolicyEnforcementOrder))
    error_message = "Valid inputs for | variable: var.NWSAF_NetworkFirewallPolicyEnforcementOrder | are: BEFORE_CLASSIC_FIREWALL, AFTER_CLASSIC_FIREWALL"
  }
  default = null
}

variable "NWSAF_NetworkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}

#---
