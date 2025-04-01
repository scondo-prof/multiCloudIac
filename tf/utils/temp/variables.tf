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
    name                                         = string
    source_ip_ranges_to_CSCRAPFG_NWEIPN_NWEA_Nat = list(string)
    secondary_ip_range_names                     = optional(list(string), null)
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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#argument-reference

variable "CSCRAPFG_CSDIU_DatabaseInstanceSettings" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#tier-1
    tier                         = string
    edition                      = optional(string, null)
    activation_policy            = optional(string, null)
    availability_type            = optional(string, null)
    collation                    = optional(string, null)
    connector_enforcement        = optional(string, null)
    deletion_protection_enabled  = optional(bool, null)
    enable_google_ml_integration = optional(bool, null)
    enable_dataplex_integration  = optional(bool, null)
    disk_autoresize              = optional(bool, null)
    disk_autoresize_limit        = optional(number, null)
    disk_size                    = optional(number, null)
    pricing_plan                 = optional(string, null)
    time_zone                    = optional(string, null)

    advanced_machine_features = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#threads_per_core-1
      threads_per_core = optional(number, null)
    }), null)

    database_flags = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#name-9
      name  = string
      value = string
    }), null)

    active_directory_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#domain-1
      domain = string
    }), null)

    data_cache_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#data_cache_enabled-1
      data_cache_enabled = optional(bool, null)
    }), null)

    deny_maintenance_period = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#end_date-1
      end_date   = string
      start_date = string
      time       = string
    }), null)

    sql_server_audit_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#bucket-1
      bucket             = optional(string, null)
      upload_interval    = optional(string, null)
      retention_interval = optional(string, null)
    }), null)

    backup_configuration = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#binary_log_enabled-1
      binary_log_enabled             = optional(bool, null)
      enabled                        = optional(bool, null)
      start_time                     = optional(string, null)
      point_in_time_recovery_enabled = optional(string, null)
      location                       = optional(string, null)
      transaction_log_retention_days = optional(number, null)

      backup_configuration = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#retained_backups-1
        retained_backups = optional(number, null)
        retention_unit   = optional(string, null)
      }), null)
    }), null)

    ip_configuration = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#ipv4_enabled-1
      ipv4_enabled                                  = optional(bool, null)
      private_network                               = optional(string, null)
      ssl_mode                                      = optional(string, null)
      server_ca_mode                                = optional(string, null)
      allocated_ip_range                            = optional(string, null)
      enable_private_path_for_google_cloud_services = optional(bool, null)

      authorized_networks = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#expiration_time-1
        expiration_time = optional(string, null)
        name            = optional(string, null)
        value           = string
      }), null)

      psc_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#psc_enabled-1
        psc_enabled               = optional(bool, null)
        allowed_consumer_projects = optional(list(string), null)
      }), null)
    }), null)

    location_preference = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#follow_gae_application-1
      follow_gae_application = optional(string, null)
      zone                   = optional(string, null)
      secondary_zone         = optional(string, null)
    }), null)

    maintenance_window = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#day-1
      day          = optional(number, null)
      hour         = optional(number, null)
      update_track = optional(string, null)
    }), null)

    insights_config = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#query_insights_enabled-1
      query_insights_enabled  = optional(bool, null)
      query_string_length     = optional(number, null)
      record_application_tags = optional(bool, null)
      record_client_address   = optional(bool, null)
      query_plans_per_minute  = optional(number, null)
    }), null)

    password_validation_policy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#min_length-1
      min_length                  = optional(number, null)
      complexity                  = optional(bool, null)
      reuse_interval              = optional(number, null)
      disallow_username_substring = optional(bool, null)
      password_change_interval    = optional(number, null)
      enable_password_policy      = optional(bool, null)
    }), null)
  })

  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceDatabaseVersion" {
  type = string
  validation {
    condition = contains([
      "MYSQL_5_6",
      "MYSQL_5_7",
      "MYSQL_8_0",
      "MYSQL_8_4",
      "POSTGRES_9_6",
      "POSTGRES_10",
      "POSTGRES_11",
      "POSTGRES_12",
      "POSTGRES_13",
      "POSTGRES_14",
      "POSTGRES_15",
      "POSTGRES_16",
      "POSTGRES_17",
      "SQLSERVER_2017_STANDARD",
      "SQLSERVER_2017_ENTERPRISE",
      "SQLSERVER_2017_EXPRESS",
      "SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD",
      "SQLSERVER_2019_ENTERPRISE",
      "SQLSERVER_2019_EXPRESS",
      "SQLSERVER_2019_WEB"
    ], var.CSCRAPFG_CSDIU_DatabaseInstanceDatabaseVersion)
    error_message = "Valid inputs for | variable: var.CSCRAPFG_CSDIU_DatabaseInstanceDatabaseVersion | are: MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, MYSQL_8_4, POSTGRES_9_6,POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, POSTGRES_16, POSTGRES_17, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. SQLSERVER_2019_STANDARD, SQLSERVER_2019_ENTERPRISE, SQLSERVER_2019_EXPRESS, SQLSERVER_2019_WEB"
  }
}

variable "databseInstanceName" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceMaintenanceVersion" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceMasterInstanceName" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceReplicaConfiguration" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#ca_certificate-1
    ca_certificate            = optional(string, null)
    client_certificate        = optional(string, null)
    client_key                = optional(string, null)
    connect_retry_interval    = optional(number, null)
    dump_file_path            = optional(string, null)
    failover_target           = optional(string, null)
    master_heartbeat_period   = optional(number, null)
    password                  = optional(string, null)
    ssl_cipher                = optional(string, null)
    username                  = optional(string, null)
    verify_server_certificate = optional(bool, null)
  })

  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceRootPassword" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceEncryptionKeyName" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceDeletionProtection" {
  type    = bool
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceRestoreBackupContext" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#backup_run_id-1
    backup_run_id = string
    instance_id   = optional(string, null)
    project       = optional(string, null)
  })
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseInstanceClone" {
  type = object({
    source_instance_name = string
    point_in_time        = optional(string, null)
    preferred_zone       = optional(string, null)
    database_names       = optional(list(string), null)
    allocated_ip_range   = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_CSCRAPFG_CSDIU_Database#argument-reference

variable "CSCRAPFG_CSDIU_DatabaseCharset" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseCollation" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseDeletionPolicy" {
  type = string
  validation {
    condition = var.CSCRAPFG_CSDIU_DatabaseDeletionPolicy == null || can(contains([
      "ABANDON",
      "DELETE"
    ], var.CSCRAPFG_CSDIU_DatabaseDeletionPolicy))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_CSDIU_DatabaseDeletionPolicy | are: ABANDON, DELETE"
  }
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_user#argument-reference

variable "CSCRAPFG_CSDIU_DatabaseUserPassword" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseUserType" {
  type = string
  validation {
    condition = var.CSCRAPFG_CSDIU_DatabaseUserType == null || can(contains([
      "BUILT_IN",
      "CLOUD_IAM_USER",
      "CLOUD_IAM_SERVICE_ACCOUNT",
      "CLOUD_IAM_GROUP",
      "CLOUD_IAM_GROUP_USER",
      "CLOUD_IAM_GROUP_SERVICE_ACCOUNT"
    ], var.CSCRAPFG_CSDIU_DatabaseUserType))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_CSDIU_DatabaseUserType | are: BUILT_IN, CLOUD_IAM_USER, CLOUD_IAM_SERVICE_ACCOUNT, CLOUD_IAM_GROUP, CLOUD_IAM_GROUP_USER, CLOUD_IAM_GROUP_SERVICE_ACCOUNT"
  }
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseUserDeletionPolicy" {
  type = string
  validation {
    condition = var.CSCRAPFG_CSDIU_DatabaseUserDeletionPolicy == null || can(contains([
      "ABANDON"
    ], var.CSCRAPFG_CSDIU_DatabaseUserDeletionPolicy))
    error_message = "Valid inputs for | variable: var.CSCRAPFG_CSDIU_DatabaseUserDeletionPolicy | are: ABANDON"
  }
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseUserHost" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_DatabaseUserPasswordPolicy" {
  type = object({
    allowed_failed_attempts      = optional(number, null)
    password_expiration_duration = optional(number, null)
    enable_failed_attempts_check = optional(bool, null)
    enable_password_verification = optional(bool, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#argument-reference

variable "CSCRAPFG_CSDIU_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "CSCRAPFG_CSDIU_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
}

variable "CSCRAPFG_CSDIU_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "CSCRAPFG_CSDIU_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "CSCRAPFG_CSDIU_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "CSCRAPFG_CSDIU_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#nested_topics
    name = string
  })
  default = null
}

variable "CSCRAPFG_CSDIU_SecretExpireTime" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_SecretTtl" {
  type    = string
  default = null
}

variable "CSCRAPFG_CSDIU_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CSDIU_Secret_manager_CSCRAPFG_CSDIU_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "CSCRAPFG_CSDIU_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = sensitive(string)
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  default = []
}



#---

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret#argument-reference

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationAuto" {
  type = object({                                   #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto
    customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_auto_customer_managed_encryption
      kms_key_name = string
    }), null)
  })

  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretReplicationUserManaged" {
  type = object({       #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret#replicas-1
    replicas = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret#location-2
      location = string
      customer_managed_encryption = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_replication_user_managed_replicas_replicas_customer_managed_encryption
        kms_key_name = string
      }), null)

    })
  })
  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretAnnotations" {
  type    = map(string)
  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretVersionAliases" {
  type    = map(string)
  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretVersionDestroyTtl" {
  type    = number
  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretTopics" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_topics
    name = string
  })
  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretExpireTime" {
  type    = string
  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretTtl" {
  type    = string
  default = null
}

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretRotation" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret_manager_CSCRAPFG_CRDPFG_SWSV_Cloudbuild_Secret#nested_rotation
    next_rotation_time = optional(string, null)
    rotation_period    = optional(string, null)
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version#argument-reference

variable "CSCRAPFG_CRDPFG_SWSV_Cloudbuild_SecretVersionObjects" {
  type = list(object({
    enabled               = optional(bool, null)
    secret_data           = string
    deletion_policy       = optional(string, null)
    is_secret_data_base64 = optional(bool, null)
  }))
  sensitive = true
}






variable "CSCRAPFG_CRDPFG_ServiceAccountDisabled" {
  type    = bool
  default = false
}

variable "CSCRAPFG_CRDPFG_ServiceAccountCreateIgnoreAlreadyExists" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CRDPFG_ServiceAccountRoleId" {
  type = string
}

variable "CSCRAPFG_CRDPFG_ServiceAccountRoleStage" {
  type = string
  validation {
    condition     = contains(["ALPHA", "BETA", "GA", "DEPRECATED", "DISABLED", "EAP"], var.CSCRAPFG_CRDPFG_ServiceAccountRoleStage)
    error_message = "Variable CSCRAPFG_CRDPFG_ServiceAccountRoleStage only has valid values of: ALPHA, BETA, GA, DEPRECATED, DISABLED, EAP"
  }
  default = "GA"
}

variable "CSCRAPFG_CRDPFG_CloudBuildTriggerYamlPath" {
  type    = string
  default = "cloudbuild.yaml"
}

variable "CSCRAPFG_CRDPFG_CloudBuildTriggerGithubRepoName" {
  type = string
}

variable "CSCRAPFG_CRDPFG_CloudBuildTriggerBranchName" {
  type    = string
  default = "main"
}

variable "CSCRAPFG_CRDPFG_CloudBuildTriggerArtifactRepoName" {
  type = string
}

variable "CSCRAPFG_CRDPFG_CloudBuildTriggerBucketName" {
  type    = string
  default = "gs://dash_build_logs"
}

variable "CSCRAPFG_CRDPFG_CloudRunConcurrentRequests" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunConcurrentRequests >= 1 && var.CSCRAPFG_CRDPFG_CloudRunConcurrentRequests <= 250
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunConcurrentRequests must be greater than or equal to 1 and less than or equal to 250"
  }
  default = 80
}

variable "CSCRAPFG_CRDPFG_CloudRunRequestsTimeout" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunRequestsTimeout >= 1 && var.CSCRAPFG_CRDPFG_CloudRunRequestsTimeout <= 3000
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunRequestsTimeout must be greater than or equal to 1 second and less than or equal to 900 seconds"
  }
  default = 300
}

variable "CSCRAPFG_CRDPFG_CloudRunPortNumber" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunPortNumber >= 1 && var.CSCRAPFG_CRDPFG_CloudRunPortNumber <= 65535
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunPortNumber must be greater than 1 and less than 65335"
  }
  default = 8080
}

variable "CSCRAPFG_CRDPFG_CloudRunMinInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunMinInstances >= 0
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunMinInstances must be greater than or equal to 0"
  }
  default = 0
}

variable "CSCRAPFG_CRDPFG_CloudRunMaxInstances" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunMaxInstances >= 1 && var.CSCRAPFG_CRDPFG_CloudRunMaxInstances <= 10
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunMaxInstances must be greater than or equal to 1 instance or less than or equal to 10 instances"
  }
  default = 5
}

variable "CSCRAPFG_CRDPFG_CloudRunEnvVariableName" {
  type    = string
  default = "ENV_VARS"
}

variable "CSCRAPFG_CRDPFG_CloudRunVpcConnector" {
  type    = string
  default = "dash"
}

variable "CSCRAPFG_CRDPFG_CloudRunAmountOfMemory" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunAmountOfMemory >= 1 && var.CSCRAPFG_CRDPFG_CloudRunAmountOfMemory <= 16
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunAmountOfMemory must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CSCRAPFG_CRDPFG_CloudRunNumberOfVcpus" {
  type = number
  validation {
    condition     = contains([1, 2, 4], var.CSCRAPFG_CRDPFG_CloudRunNumberOfVcpus)
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunNumberOfVcpus must be greater than or equal to 1 or less than or equal to 16."
  }
  default = 2
}

variable "CSCRAPFG_CRDPFG_CloudBuildTriggerAdditionalSubstitutions" {
  description = "Additional substitutions for the Cloud Build trigger"
  type        = map(string)
  default     = {}
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "CSCRAPFG_CRDPFG_CloudRunLogsAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CRDPFG_CloudRunLogsAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "CSCRAPFG_CRDPFG_CloudRunLogsAlertPolicySeverity" {
  type = string
  validation {
    condition = var.CSCRAPFG_CRDPFG_CloudRunLogsAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CSCRAPFG_CRDPFG_CloudRunLogsAlertPolicySeverity))
    error_message = "Valid inputs for | variable: CSCRAPFG_CRDPFG_CloudRunLogsAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CSCRAPFG_CRDPFG_CloudRunLogsAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference

variable "CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent >= 0 && var.CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent <= 100
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent >= 0 && var.CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent <= 100
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyMemoryThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 80
}


variable "CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CRDPFG_CloudRunInfraAlertPolicyNotificationChannels" {
  type = list(string)
}

variable "CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "CSCRAPFG_CRDPFG_CloudRunMemAlertPolicySeverity" {
  type = string
  validation {
    condition = var.CSCRAPFG_CRDPFG_CloudRunMemAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CSCRAPFG_CRDPFG_CloudRunMemAlertPolicySeverity))
    error_message = "Valid inputs for | variable: CSCRAPFG_CRDPFG_CloudRunMemAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CSCRAPFG_CRDPFG_CloudRunMemAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#argument-reference


variable "CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent >= 0 && var.CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent <= 100
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuConditionTriggerPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}

variable "CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent" {
  type = number
  validation {
    condition     = var.CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent >= 0 && var.CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent <= 100
    error_message = "Variable CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyCpuThresholdPercent must be greater than or equal to 0 or less than and equal to 100"
  }

  default = 50
}


variable "CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyEnabled" {
  type    = bool
  default = true
}

variable "CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyAlertStrategy" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_alert_strategy
  type = object({

    notification_rate_limit = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_rate_limit
      period = optional(string, null)
    }), null)

    auto_close = optional(string, null)

    notification_channel_strategy = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_notification_channel_strategy
      notification_channel_names = optional(list(string), null)
      renotify_interval          = optional(number, null)
    }), null)
  })
  default = null
}

variable "CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicySeverity" {
  type = string
  validation {
    condition = var.CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicySeverity == null || can(contains([
      "CRITICAL",
      "ERROR",
      "WARNING"
    ], var.CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicySeverity))
    error_message = "Valid inputs for | variable: CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicySeverity | are: CRITICAL, ERROR, WARNING"
  }
  default = "ERROR"
}

variable "CSCRAPFG_CRDPFG_CloudRunCpuAlertPolicyDocumentation" { #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_documentation
  type = object({
    content   = optional(string, null)
    mime_type = optional(string, null)
    subject   = optional(string, null)
    links = optional(object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy#nested_links
      display_name = optional(string, null)
      url          = optional(string, null)
    }), {})
  })
  default = null
}



#---
