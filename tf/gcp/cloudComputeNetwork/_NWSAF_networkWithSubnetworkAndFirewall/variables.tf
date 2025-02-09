variable "projectId" {
  type = string
}

variable "region" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "NWSAF_NetworkAutoCreateSubNetworks" {
  type    = bool
  default = false
}

variable "NWSAF_NetworkRoutingMode" {
  type = string
  validation {
    condition     = contains(["REGIONAL", "GLOBAL"], var.NWSAF_NetworkRoutingMode)
    error_message = "Value put for NWSAF_NetworkRoutingMode is not in values: REGIONAL, GLOBAL."
  }
  default = "REGIONAL"
}

variable "NWSAF_NetworkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition     = var.NWSAF_NetworkMaximumTransmissionUnitBytes > 1300 && var.NWSAF_NetworkMaximumTransmissionUnitBytes < 8896
    error_message = "Value set for NWSAF_NetworkMaximumTransmissionUnitBytes must: greater than 1300 bytes, but less than 8896 bytes."
  }
  default = 1460
}

variable "NWSAF_NetworkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}

variable "NWSAF_SubnetworkIpCidrRange" {
  type    = string
  default = "10.142.0.0/20"
}

variable "NWSAF_FirewallIngressRules" {
  description = "List of firewall rules to apply."
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
  default = [
    {
      protocol = "tcp"
      ports    = ["22", "3389"]
    }
  ]
}

variable "NWSAF_FirewallIngressDisabled" {
  type    = bool
  default = false
}


variable "NWSAF_FirewallIngressPriority" {
  type = number
  validation {
    condition     = var.NWSAF_FirewallIngressPriority >= 0 && var.NWSAF_FirewallIngressPriority <= 65535
    error_message = "value"
  }
  default = 1000
}

variable "NWSAF_FirewallIngressSourceRanges" {
  type = list(string)
}

variable "NWSAF_FirewallEgressRules" {
  description = "List of firewall rules to apply."
  type = list(object({
    protocol = string
    ports    = list(string)
  }))
  default = [
    {
      protocol = "tcp"
      ports    = ["667"]
    },
    {
      protocol = "upd"
      ports    = ["665", "666"]
    }
  ]
}

variable "NWSAF_FirewallEgressDisabled" {
  type    = bool
  default = false
}


variable "NWSAF_FirewallEgressPriority" {
  type = number
  validation {
    condition     = var.NWSAF_FirewallEgressPriority >= 0 && var.NWSAF_FirewallEgressPriority <= 65535
    error_message = "value"
  }
  default = 1000
}

variable "NWSAF_FirewallEgressSourceRanges" {
  type = list(string)
}