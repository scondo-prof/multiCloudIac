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
