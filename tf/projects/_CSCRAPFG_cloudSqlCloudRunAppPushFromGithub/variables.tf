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

variable "deployedDate" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_Network#argument-reference

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkDescription" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkAutoCreateSubNetworks" {
  type    = bool
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkRoutingMode" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_NetworkRoutingMode == null || can(contains([
      "REGIONAL",
      "GLOBAL"
    ], var.CSCRAPFG_NWEIPN_NWSAF_NetworkRoutingMode))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_NetworkRoutingMode | are: REGIONAL, GLOBAL"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkMaximumTransmissionUnitBytes" {
  type = number
  validation {
    condition     = var.CSCRAPFG_NWEIPN_NWSAF_NetworkMaximumTransmissionUnitBytes == null || can(var.CSCRAPFG_NWEIPN_NWSAF_NetworkMaximumTransmissionUnitBytes >= 1300 && var.CSCRAPFG_NWEIPN_NWSAF_NetworkMaximumTransmissionUnitBytes <= 8896)
    error_message = "var.CSCRAPFG_NWEIPN_NWSAF_NetworkMaximumTransmissionUnitBytes must be Greater than or Equal to 1300 AND Less Than or Equal to 8896"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkEnableUlaInternalIpv6" {
  type    = bool
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkInternalIpv6Range" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkFirewallPolicyEnforcementOrder" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_NetworkFirewallPolicyEnforcementOrder == null || can(contains([
      "BEFORE_CLASSIC_FIREWALL",
      "AFTER_CLASSIC_FIREWALL"
    ], var.CSCRAPFG_NWEIPN_NWSAF_NetworkFirewallPolicyEnforcementOrder))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_NetworkFirewallPolicyEnforcementOrder | are: BEFORE_CLASSIC_FIREWALL, AFTER_CLASSIC_FIREWALL"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_NetworkDeleteDefaultRoutesOnCreate" {
  type    = bool
  default = false
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_Subnetwork#argument-reference

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkNetwork" {
  type = string
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkDescription" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkIpCidrRange" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkReservedInternalRange" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkPurpose" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkPurpose == null || can(contains([
      "PRIVATE",
      "REGIONAL_MANAGED_PROXY",
      "GLOBAL_MANAGED_PROXY",
      "PRIVATE_SERVICE_CONNECT",
      "PEER_MIGRATION"
    ], var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkPurpose))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkPurpose | are: PRIVATE, REGIONAL_MANAGED_PROXY, GLOBAL_MANAGED_PROXY, PRIVATE_SERVICE_CONNECT, PEER_MIGRATION"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkRole" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkRole == null || can(contains([
      "ACTIVE",
      "BACKUP"
    ], var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkRole))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkRole | are: ACTIVE, BACKUP"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkSecondaryIpRange" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_Subnetwork#nested_secondary_ip_range
    range_name              = string
    ip_cidr_range           = optional(string, null)
    reserved_internal_range = optional(string, null)
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkPrivateIpGoogleAccess" {
  type    = bool
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkPrivateIpv6GoogleAccess" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkLogConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_Subnetwork#nested_log_config
    aggregation_interval = optional(string, null)
    flow_sampling        = optional(number, null)
    metadata             = optional(string, null)
    metadata_fields      = optional(list(string), null)
    filter_expr          = optional(string, null)
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkStackType" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkStackType == null || can(contains([
      "IPV4_ONLY",
      "IPV4_IPV6",
      "IPV6_ONLY"
    ], var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkStackType))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkStackType | are: IPV4_ONLY, IPV4_IPV6, IPV6_ONLY"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkIpv6AccessType" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkIpv6AccessType == null || can(contains([
      "EXTERNAL",
      "INTERNAL"
    ], var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkIpv6AccessType))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_SubnetworkIpv6AccessType | are: EXTERNAL, INTERNAL"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkExternalIpv6Prefix" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_SubnetworkSendSecondaryIpRangeIfEmpty" {
  type    = bool
  default = null
}




#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_IngressFirewall#argument-reference

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallNetwork" {
  type = string
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallRulesAllow" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_IngressFirewall#nested_allow
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDeny" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_IngressFirewall#nested_deny
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDescription" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDestinationRanges" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDirection" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDirection == null || can(contains([
      "INGRESS",
      "EGRESS"
    ], var.CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDirection))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDirection | are: INGRESS, EGRESS"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallDisabled" {
  type    = bool
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallLogConfig" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_IngressFirewall#nested_log_config
  type = object({
    metadata = string
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallPriority" {
  type = number
  validation {
    condition     = var.CSCRAPFG_NWEIPN_NWSAF_IngressFirewallPriority == null || can(var.CSCRAPFG_NWEIPN_NWSAF_IngressFirewallPriority >= 0 && var.CSCRAPFG_NWEIPN_NWSAF_IngressFirewallPriority <= 65535)
    error_message = "var.CSCRAPFG_NWEIPN_NWSAF_IngressFirewallPriority must be Greater than or Equal to 0 AND Less Than or Equal to 65535"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallSourceRanges" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallSourceServiceAccounts" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallSourceTags" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallTargetServiceAccounts" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_IngressFirewallTargetTags" {
  type    = list(string)
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_EgressFirewall#argument-reference

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallNetwork" {
  type = string
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallRulesAllow" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_EgressFirewall#nested_allow
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDeny" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_EgressFirewall#nested_deny
  type = list(object({
    protocol = string
    ports    = optional(list(string), null)
  }))
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDescription" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDestinationRanges" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDirection" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDirection == null || can(contains([
      "INGRESS",
      "EGRESS"
    ], var.CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDirection))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDirection | are: INGRESS, EGRESS"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallDisabled" {
  type    = bool
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallLogConfig" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_CSCRAPFG_NWEIPN_NWSAF_EgressFirewall#nested_log_config
  type = object({
    metadata = string
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallPriority" {
  type = number
  validation {
    condition     = var.CSCRAPFG_NWEIPN_NWSAF_EgressFirewallPriority == null || can(var.CSCRAPFG_NWEIPN_NWSAF_EgressFirewallPriority >= 0 && var.CSCRAPFG_NWEIPN_NWSAF_EgressFirewallPriority <= 65535)
    error_message = "var.CSCRAPFG_NWEIPN_NWSAF_EgressFirewallPriority must be Greater than or Equal to 0 AND Less Than or Equal to 65535"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallSourceRanges" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallSourceServiceAccounts" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallSourceTags" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallTargetServiceAccounts" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWSAF_EgressFirewallTargetTags" {
  type    = list(string)
  default = null
}





#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address#argument-reference

#Only necessary if you want a specific address for internal use
variable "CSCRAPFG_NWEIPN_NWEA_NetworkAddressAddress" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NetworkAddressType" {
  type = string
  validation {
    condition     = contains(["INTERNAL", "EXTERNAL"], var.CSCRAPFG_NWEIPN_NWEA_NetworkAddressType)
    error_message = "Variable CSCRAPFG_NWEIPN_NWEA_NetworkAddressType must be one of the following values: INTERNAL, EXTERNAL"
  }
  default = "EXTERNAL"
}

#Possible Values are either PREMIUM or STANDARD, if left Null it will default to PREMIUM
variable "CSCRAPFG_NWEIPN_NWEA_NetworkAddressNetworkTier" {
  type    = string
  default = null
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router#argument-reference

variable "CSCRAPFG_NWEIPN_NWEA_NetworkRouterNetwork" {
  type = string
}

variable "CSCRAPFG_NWEIPN_NWEA_NetworkRouterDescription" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NetworkRouterBgp" {
  type = object({
    asn               = string
    advertise_mode    = optional(string, null)
    advertised_groups = optional(list(string), null)
    advertised_ip_ranges = optional(object({
      range       = string
      description = optional(string, null)
    }), null)
    keepalive_interval = optional(number, null)
    identifier_range   = optional(string, null)
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NetworkRouterEncryptedInterconnectRouter" {
  type    = bool
  default = null
}




#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_CSCRAPFG_NWEIPN_NWEA_Nat#argument-reference

variable "CSCRAPFG_NWEIPN_NWEA_NatSourceSubnetworkIpRangesToNat" {
  type = string
  validation {
    condition = contains([
      "ALL_SUBNETWORKS_ALL_IP_RANGES",
      "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES",
      "LIST_OF_SUBNETWORKS"
    ], var.CSCRAPFG_NWEIPN_NWEA_NatSourceSubnetworkIpRangesToNat)
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWEA_NatSourceSubnetworkIpRangesToNat | are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
}

variable "CSCRAPFG_NWEIPN_NWEA_NatIpAllocateOption" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWEA_NatIpAllocateOption == null || can(contains([
      "ALL_SUBNETWORKS_ALL_IP_RANGES",
      "ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES",
      "LIST_OF_SUBNETWORKS"
    ], var.CSCRAPFG_NWEIPN_NWEA_NatIpAllocateOption))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWEA_NatIpAllocateOption | are: ALL_SUBNETWORKS_ALL_IP_RANGES, ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, LIST_OF_SUBNETWORKS"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatInitialNatIps" {
  type    = list(string)
  default = null
}


variable "CSCRAPFG_NWEIPN_NWEA_NatIps" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatDrainNatIps" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatSubnetwork" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_CSCRAPFG_NWEIPN_NWEA_Nat#nested_subnetwork
  type = object({
    name                                = string
    source_ip_ranges_to_CSCRAPFG_NWEIPN_NWEA_Nat = list(string)
    secondary_ip_range_names            = optional(list(string), null)
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatMinPortsPerVm" {
  type    = number
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatMaxPortsPerVm" {
  type    = number
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatEnableDynamicPortAllocation" {
  type    = bool
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatUdpIdleTimeoutSec" {
  type    = number
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatIcmpIdleTimeoutSec" {
  type    = number
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatTcpEstablishedIdleTimeoutSec" {
  type    = number
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatTcpTransitoryIdleTimeoutSec" {
  type    = number
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatTcpTimeWaitTimeoutSec" {
  type    = number
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatLogConfig" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_CSCRAPFG_NWEIPN_NWEA_Nat#nested_log_config
    enable = bool
    filter = string
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatEndpointTypes" {
  type    = list(string)
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatRules" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_CSCRAPFG_NWEIPN_NWEA_Nat#nested_rules
    rule_number = number
    description = optional(string, null)
    match       = string

    action = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_CSCRAPFG_NWEIPN_NWEA_Nat#nested_rules_rules_action
      source_CSCRAPFG_NWEIPN_NWEA_Nat_active_ips = optional(list(string), null)
      source_CSCRAPFG_NWEIPN_NWEA_Nat_drain_ips  = optional(list(string), null)
    })
  })
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatEnableEndpointIndependentMapping" {
  type    = bool
  default = null
}

variable "CSCRAPFG_NWEIPN_NWEA_NatAutoNetworkTier" {
  type = string
  validation {
    condition = var.CSCRAPFG_NWEIPN_NWEA_NatAutoNetworkTier == null || can(contains([
      "PREMIUM",
      "STANDARD"
    ], var.CSCRAPFG_NWEIPN_NWEA_NatAutoNetworkTier))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_NWEA_NatAutoNetworkTier | are: PREMIUM, STANDARD"
  }
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#argument-reference

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorNetwork" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorIpCidrRange" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorMachineType" {
  type    = string
  default = null
}

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorMinThroughput" {
  type = number
  validation {
    condition = var.CSCRAPFG_NWEIPN_VpcAccessConnectorMinThroughput == null || can(contains([
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900
    ], var.CSCRAPFG_NWEIPN_VpcAccessConnectorMinThroughput))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_VpcAccessConnectorMinThroughput | are: 200, 300, 400, 500, 600, 700, 800, 900"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorMinInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG_NWEIPN_VpcAccessConnectorMinInstances == null || can(var.CSCRAPFG_NWEIPN_VpcAccessConnectorMinInstances >= 2 && var.CSCRAPFG_NWEIPN_VpcAccessConnectorMinInstances <= 9)
    error_message = "var.CSCRAPFG_NWEIPN_VpcAccessConnectorMinInstances must be Greater than or Equal to 2 AND Less Than or Equal to 9"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorMaxInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG_NWEIPN_VpcAccessConnectorMaxInstances == null || can(var.CSCRAPFG_NWEIPN_VpcAccessConnectorMaxInstances >= 3 && var.CSCRAPFG_NWEIPN_VpcAccessConnectorMaxInstances <= 10)
    error_message = "var.CSCRAPFG_NWEIPN_VpcAccessConnectorMaxInstances must be Greater than or Equal to 3 AND Less Than or Equal to 10"
  }
  default = null
}

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorMaxThroughput" {
  type = number
  validation {
    condition = var.CSCRAPFG_NWEIPN_VpcAccessConnectorMaxThroughput == null || can(contains([
      300,
      400,
      500,
      600,
      700,
      800,
      900,
      1000
    ], var.CSCRAPFG_NWEIPN_VpcAccessConnectorMaxThroughput))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_NWEIPN_VpcAccessConnectorMaxThroughput | are: 300, 400, 500, 600, 700, 800, 900, 1000"
  }
}

variable "CSCRAPFG_NWEIPN_VpcAccessConnectorSubnet" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#nested_subnet
    name       = optional(string, null)
    project_id = optional(string, null)
  })
}






#---


variable "CSCRAPFG_DatabaseInstanceDatabaseVersion" {
  type = string
  validation {
    condition     = contains(["MYSQL_5_6", "MYSQL_5_7", "MYSQL_8_0", "POSTGRES_9_6", "POSTGRES_10", "POSTGRES_11", "POSTGRES_12", "POSTGRES_13", "POSTGRES_14", "POSTGRES_15", "SQLSERVER_2017_STANDARD", "SQLSERVER_2017_ENTERPRISE", "SQLSERVER_2017_EXPRESS", "SQLSERVER_2017_WEB", "SQLSERVER_2019_STANDARD", "SQLSERVER_2019_ENTERPRISE", "SQLSERVER_2019_EXPRESS", "SQLSERVER_2019_WEB"], var.CSCRAPFG_DatabaseInstanceDatabaseVersion)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceDatabaseVersion are MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD, SQLSERVER_2019_ENTERPRISE, SQLSERVER_2019_EXPRESS, SQLSERVER_2019_WEB."
  }
}

variable "CSCRAPFG_DatabaseInstanceRootPassword" {
  type = string
}

variable "CSCRAPFG_DatabaseInstanceDeletionProtection" {
  type    = bool
  default = false
}

variable "CSCRAPFG_DatabaseInstanceTier" {
  type = string
}

variable "CSCRAPFG_DatabaseInstanceEdition" {
  type = string
  validation {
    condition     = contains(["ENTERPRISE", "ENTERPRISE_PLUS"], var.CSCRAPFG_DatabaseInstanceEdition)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceEdition are ENTERPRISE, ENTERPRISE_PLUS."
  }
  default = "ENTERPRISE"
}

variable "projectName" {
  type = string
}

variable "deployedDate" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "CSCRAPFG_DatabaseInstanceActivationPolicy" {
  type = string
  validation {
    condition     = contains(["ALWAYS", "NEVER", "ON_DEMAND"], var.CSCRAPFG_DatabaseInstanceActivationPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceActivationPolicy are ALWAYS, NEVER or ON_DEMAND."
  }
  default = "ALWAYS"
}

variable "CSCRAPFG_DatabaseInstanceAvailabilityType" {
  type = string
  validation {
    condition     = contains(["REGIONAL", "ZONAL"], var.CSCRAPFG_DatabaseInstanceAvailabilityType)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceAvailabilityType are REGIONAL, ZONAL."
  }
  default = "ZONAL"
}

variable "CSCRAPFG_DatabaseInstanceCollation" {
  type    = string
  default = null
}

variable "CSCRAPFG_DatabaseInstanceDiskAutoresize" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseInstanceDiskAutoresizeLimit" {
  type    = number
  default = 0
}

variable "CSCRAPFG_DatabaseInstanceDiskSize" {
  type    = number
  default = 10
}

variable "CSCRAPFG_DatabaseInstanceDiskType" {
  type = string
  validation {
    condition     = contains(["PD_SSD", "PD_HDD"], var.CSCRAPFG_DatabaseInstanceDiskType)
    error_message = "The only valid options for CSCRAPFG_DatabaseInstanceDiskType are REGIONAL, ZONAL."
  }
  default = "PD_SSD"
}

variable "CSCRAPFG_DatabaseInstanceAuthorizedNetworkIpRange" {
  type = string
}

variable "CSCRAPFG_DatabaseDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DELETE"], var.CSCRAPFG_DatabaseDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseDeletionPolicy are 'ABANDON', 'DELETE'."
  }
}

variable "CSCRAPFG_DatabaseUserPassword" {
  type = string
}

variable "CSCRAPFG_DatabaseUserType" {
  type    = string
  default = "BUILT-IN"
}

variable "CSCRAPFG_DatabaseUserDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON"], var.CSCRAPFG_DatabaseUserDeletionPolicy)
    error_message = "Variable CSCRAPFG_DatabaseUserDeletionPolicy must be the value ABANDON or null"
  }
  default = "ABANDON"
}

variable "CSCRAPFG_DatabasePublicIpSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabasePublicIpSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabasePublicIpSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabasePublicIpSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_DatabaseUserNameSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseUserNameSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabaseUserNameSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseUserNameSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_DatabaseUserPasswordSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseUserPasswordSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabaseUserPasswordSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseUserPasswordSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_DatabaseNameSecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_DatabaseNameSecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_DatabaseNameSecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_DatabaseNameSecretVersionDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG_CRDPFG_SecretVersionSecretData" {
  type = string
}

variable "CSCRAPFG_CRDPFG_SecretVersionEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CRDPFG_SecretVersionDeletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DISABLE", "DELETE"], var.CSCRAPFG_CRDPFG_SecretVersionDeletionPolicy)
    error_message = "The only valid options for CSCRAPFG_CRDPFG_SecretDeletionPolicy are ABANDON, DISABLE, DELETE."
  }
  default = "DELETE"
}

variable "CSCRAPFG__CloudBuildTriggerServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "CSCRAPFG__CloudBuildTriggerServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CloudBuildTriggerRoleId" {
  type = string
}

variable "CSCRAPFG__CloudBuildTriggerRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.CSCRAPFG__CloudBuildTriggerRoleStage)
    error_message = "Variable CSCRAPFG__RoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "CSCRAPFG__CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "CSCRAPFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "CSCRAPFG__CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "CSCRAPFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "CSCRAPFG__CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "CSCRAPFG__CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunConcurrentRequests >= 1 && var.CSCRAPFG__CloudRunConcurrentRequests <= 250
    error_message = "Variable CSCRAPFG__ConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "CSCRAPFG__CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunRequestsTimeout >= 1 && var.CSCRAPFG__CloudRunRequestsTimeout <= 3000
    error_message = "Variable CSCRAPFG__RequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "CSCRAPFG__CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunPortNumber >= 1 && var.CSCRAPFG__CloudRunPortNumber <= 65535
    error_message = "Variable CSCRAPFG__PortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "CSCRAPFG__CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunMinInstances >= 0
    error_message = "Variable CSCRAPFG__MinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "CSCRAPFG__CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunMaxInstances >= 1 && var.CSCRAPFG__CloudRunMaxInstances <= 10
    error_message = "Variable CSCRAPFG__MaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "CSCRAPFG__CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "CSCRAPFG__CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.CSCRAPFG__CloudRunNumberOfVcpus)
    error_message = "Variable CSCRAPFG__NumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CSCRAPFG__CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.CSCRAPFG__CloudRunAmountOfMemory >= 1 && var.CSCRAPFG__CloudRunAmountOfMemory <= 16
    error_message = "Variable CSCRAPFG__AmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CSCRAPFG__CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}


#     _NEXTAUTH_SECRET   = var.nextAuthSecret
#     _SALT              = var.salt
#     _ENCRYPTION_KEY    = var.encryptionKey
#     _NEXTAUTH_URL      = var.nextAuthUrl
#     _DATABASE_HOST     = module.databaseDatabaseInstanceDatabaseUser.databaseInstancePublicIp
#     _DATABASE_USERNAME = module.databaseDatabaseInstanceDatabaseUser.databaseUserName
#     _DATABASE_PASSWORD = module.databaseDatabaseInstanceDatabaseUser.databaseUserPassword
#     _DATABASE_NAME     = module.databaseDatabaseInstanceDatabaseUser.databaseInstanceName
variable "CSCRAPFG__CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}

variable "CSCRAPFG__CloudRunAlertPolicyNotificationChannelId" {
  type    = string
  default = "11762886701350469070"
}

variable "CSCRAPFG__CloudRunAlertPolicyNotificationRateLimit" {
  type    = string
  default = "600s"
}

variable "CSCRAPFG__CloudRunAlertPolicyAutoClose" {
  type    = string
  default = "604800s"
}