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

variable "NWEIPN_NetworkAutoCreateSubNetworks" {
  type    = bool
  default = false
}

variable "NWEIPN_NetworkRoutingMode" {
  type = string
  validation {
    condition     = contains(["REGIONAL", "GLOBAL"], var.NWEIPN_NetworkRoutingMode)
    error_message = "Value put for NWEIPN_NetworkRoutingMode is not in values: REGIONAL, GLOBAL."
  }
  default = "REGIONAL"
}

variable "NWEIPN_NetworkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition     = var.NWEIPN_NetworkMaximumTransmissionUnitBytes > 1300 && var.NWEIPN_NetworkMaximumTransmissionUnitBytes < 8896
    error_message = "Value set for NWEIPN_NetworkMaximumTransmissionUnitBytes must: greater than 1300 bytes, but less than 8896 bytes."
  }
  default = 1460
}

variable "NWEIPN_NetworkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}

variable "NWEIPN_SubnetworkIpCidrRange" {
  type    = string
  default = "10.142.0.0/20"
}

variable "NWEIPN_FirewallIngressRules" {
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

variable "NWEIPN_FirewallIngressDisabled" {
  type    = bool
  default = false
}


variable "NWEIPN_FirewallIngressPriority" {
  type = number
  validation {
    condition     = var.NWEIPN_FirewallIngressPriority >= 0 && var.NWEIPN_FirewallIngressPriority <= 65535
    error_message = "value"
  }
  default = 1000
}

variable "NWEIPN_FirewallIngressSourceRanges" {
  type = list(string)
}

variable "NWEIPN_FirewallEgressRules" {
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

variable "NWEIPN_FirewallEgressDisabled" {
  type    = bool
  default = false
}


variable "NWEIPN_FirewallEgressPriority" {
  type = number
  validation {
    condition     = var.NWEIPN_FirewallEgressPriority >= 0 && var.NWEIPN_FirewallEgressPriority <= 65535
    error_message = "value"
  }
  default = 1000
}

variable "NWEIPN_FirewallEgressSourceRanges" {
  type = list(string)
}

#Only necessary if you want a specific address for internal use
variable "NWEIPN_NetworkAddressAddress" {
  type    = string
  default = null
}

variable "NWEIPN_NetworkAddressType" {
  type = string
  validation {
    condition     = contains(["INTERNAL", "EXTERNAL"], var.NWEIPN_NetworkAddressType)
    error_message = "Variable NWEIPN_NetworkAddressType must be one of the following values: INTERNAL, EXTERNAL"
  }
  default = "EXTERNAL"
}

#Possible Values are either PREMIUM or STANDARD, if left Null it will default to PREMIUM
variable "NWEIPN_NetworkAddressNetworkTier" {
  type    = string
  default = null
}

variable "NWEIPN_NetworkRouterNetworkName" {
  type = string
}

variable "NWEIPN_NatSourceSubnetworkIpRangesToNat" {
  type = string
  validation {
    condition     = contains(["ALL_SUBNETWORKS_ALL_IP_RANGES", "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES", "LIST_OF_SUBNETWORKS"], var.NWEIPN_NatSourceSubnetworkIpRangesToNat)
    error_message = "Variable NWEIPN_NatSourceSubnetworkIpRangesToNat must be one of the following values: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
  default = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

variable "NWEIPN_NatMinPortsPerVm" {
  type    = number
  default = 64
}

variable "NWEIPN_VpcAccessConnectorMachineType" {
  type    = string
  default = "e2-micro"
}

variable "NWEIPN_VpcAccessConnectorMinInstances" {
  type = number
  validation {
    condition     = var.NWEIPN_VpcAccessConnectorMinInstances >= 2 && var.NWEIPN_VpcAccessConnectorMinInstances <= 9
    error_message = "Variable NWEIPN_VpcAccessConnectorMinInstances must be greater than or equal to 2 and less than or equal to 9."
  }
  default = 2
}

variable "NWEIPN_VpcAccessConnectorMaxInstances" {
  type = number
  validation {
    condition     = var.NWEIPN_VpcAccessConnectorMaxInstances >= 3 && var.NWEIPN_VpcAccessConnectorMaxInstances <= 10
    error_message = "Variable NWEIPN_VpcAccessConnectorMaxInstances must be greater than or equal to 3 and less than or equal to 10."
  }
  default = 3
}