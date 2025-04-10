variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc#argument-reference

variable "VEN_VFSI_VpcCidrBlock" {
  type    = string
  default = null
}

variable "VEN_VFSI_VpcInstanceTenancy" {
  type = string
  validation {
    condition = var.VEN_VFSI_VpcInstanceTenancy == null || can(contains([
      "default",
      "dedicated"
    ], var.VEN_VFSI_VpcInstanceTenancy))
    error_message = "Valid inputs for | variable: var.VEN_VFSI_VpcInstanceTenancy | are: default, and dedicated"
  }
  default = null
}

variable "VEN_VFSI_VpcIpv4IpamPoolId" {
  type    = string
  default = null
}

variable "VEN_VFSI_VpcIpv4NetmaskLength" {
  type    = number
  default = null
}

variable "VEN_VFSI_VpcIpv6CidrBlock" {
  type    = string
  default = null
}

variable "VEN_VFSI_VpcIpv6IpamPoolId" {
  type    = string
  default = null
}

variable "VEN_VFSI_VpcIpv6NetmaskLength" {
  type    = number
  default = null
}

variable "VEN_VFSI_VpcIpv6CidrBlockNetworkBorderGroup" {
  type    = string
  default = null
}

variable "VEN_VFSI_VpcEnableDnsSupport" {
  type    = bool
  default = null
}

variable "VEN_VFSI_VpcEnableNetworkAddressUsageMetrics" {
  type    = bool
  default = null
}

variable "VEN_VFSI_VpcEnableDnsHostnames" {
  type    = bool
  default = null
}

variable "VEN_VFSI_VpcAssignGeneratedIpv6CidrBlock" {
  type    = bool
  default = null
}


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet#argument-reference

variable "VEN_VFSI_SubnetPublicSubnetObject" {
  type = object({
    assign_ipv6_address_on_creation                = optional(bool, null)
    availability_zone                              = optional(string, null)
    availability_zone_id                           = optional(string, null)
    cidr_block                                     = optional(string, null)
    customer_owned_ipv4_pool                       = optional(string, null)
    enable_dns64                                   = optional(bool, null)
    enable_lni_at_device_index                     = optional(number, null)
    enable_resource_name_dns_aaaa_record_on_launch = optional(bool, null)
    enable_resource_name_dns_a_record_on_launch    = optional(bool, null)
    ipv6_cidr_block                                = optional(string, null)
    ipv6_native                                    = optional(bool, null)
    map_customer_owned_ip_on_launch                = optional(bool, null)
    map_public_ip_on_launch                        = optional(bool, null)
    outpost_arn                                    = optional(string, null)
    private_dns_hostname_type_on_launch            = optional(string, null)
  })
  default = {}
}

variable "VEN_VFSI_SubnetPrivateSubnetObject" {
  type = object({
    assign_ipv6_address_on_creation                = optional(bool, null)
    availability_zone                              = optional(string, null)
    availability_zone_id                           = optional(string, null)
    cidr_block                                     = optional(string, null)
    customer_owned_ipv4_pool                       = optional(string, null)
    enable_dns64                                   = optional(bool, null)
    enable_lni_at_device_index                     = optional(number, null)
    enable_resource_name_dns_aaaa_record_on_launch = optional(bool, null)
    enable_resource_name_dns_a_record_on_launch    = optional(bool, null)
    ipv6_cidr_block                                = optional(string, null)
    ipv6_native                                    = optional(bool, null)
    map_public_ip_on_launch                        = optional(bool, null)
    outpost_arn                                    = optional(string, null)
    private_dns_hostname_type_on_launch            = optional(string, null)
  })
  default = {}
}

variable "VEN_VFSI_SubnetObjects" {
  type = list(object({
    name                                           = string
    assign_ipv6_address_on_creation                = optional(bool, null)
    availability_zone                              = optional(string, null)
    availability_zone_id                           = optional(string, null)
    cidr_block                                     = optional(string, null)
    customer_owned_ipv4_pool                       = optional(string, null)
    enable_dns64                                   = optional(bool, null)
    enable_lni_at_device_index                     = optional(number, null)
    enable_resource_name_dns_aaaa_record_on_launch = optional(bool, null)
    enable_resource_name_dns_a_record_on_launch    = optional(bool, null)
    ipv6_cidr_block                                = optional(string, null)
    ipv6_native                                    = optional(bool, null)
    map_customer_owned_ip_on_launch                = optional(bool, null)
    map_public_ip_on_launch                        = optional(bool, null)
    outpost_arn                                    = optional(string, null)
    private_dns_hostname_type_on_launch            = optional(string, null)
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table#argument-reference


variable "VEN_VFSI_PublicRouteTableRoutes" {
  type = list(object({
    cidr_block                 = string
    ipv6_cidr_block            = optional(string, null)
    destination_prefix_list_id = optional(string, null)
    carrier_gateway_id         = optional(string, null)
    core_network_arn           = optional(string, null)
    egress_only_gateway_id     = optional(string, null)
    gateway_id                 = optional(string, null)
    local_gateway_id           = optional(string, null)
    nat_gateway_id             = optional(string, null)
    network_interface_id       = optional(string, null)
    transit_gateway_id         = optional(string, null)
    vpc_endpoint_id            = optional(string, null)
    vpc_peering_connection_id  = optional(string, null)
  }))
  default = []
}

variable "VEN_VFSI_PrivateRouteTableRoutes" {
  type = list(object({
    cidr_block                 = string
    ipv6_cidr_block            = optional(string, null)
    destination_prefix_list_id = optional(string, null)
    carrier_gateway_id         = optional(string, null)
    core_network_arn           = optional(string, null)
    egress_only_gateway_id     = optional(string, null)
    gateway_id                 = optional(string, null)
    local_gateway_id           = optional(string, null)
    nat_gateway_id             = optional(string, null)
    network_interface_id       = optional(string, null)
    transit_gateway_id         = optional(string, null)
    vpc_endpoint_id            = optional(string, null)
    vpc_peering_connection_id  = optional(string, null)
  }))
  default = []
}

variable "VEN_VFSI_RouteTableObjects" {
  type = list(object({
    name = string

    route = optional(list(object({
      cidr_block                 = string
      ipv6_cidr_block            = optional(string, null)
      destination_prefix_list_id = optional(string, null)
      carrier_gateway_id         = optional(string, null)
      core_network_arn           = optional(string, null)
      egress_only_gateway_id     = optional(string, null)
      gateway_id                 = optional(string, null)
      local_gateway_id           = optional(string, null)
      nat_gateway_id             = optional(string, null)
      network_interface_id       = optional(string, null)
      transit_gateway_id         = optional(string, null)
      vpc_endpoint_id            = optional(string, null)
      vpc_peering_connection_id  = optional(string, null)
    })), null)

    propagating_vgws = optional(list(string), null)
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association#argument-reference

variable "VEN_VFSI_RouteTableAssociationObjects" {
  type = list(object({
    subnet_id      = optional(string, null)
    gateway_id     = optional(string, null)
    route_table_id = string
  }))
  default = []
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway#argument-reference



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#argument-reference


variable "VEN_VFSI_LogGroupFlowLogsNamePrefix" {
  type    = string
  default = null
}

variable "VEN_VFSI_LogGroupFlowLogsSkipDestroy" {
  type    = bool
  default = null
}

variable "VEN_VFSI_LogGroupFlowLogsClass" {
  type = string
  validation {
    condition = var.VEN_VFSI_LogGroupFlowLogsClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.VEN_VFSI_LogGroupFlowLogsClass))
    error_message = "Valid inputs for | variable: var.VEN_VFSI_LogGroupFlowLogsClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "VEN_VFSI_LogGroupFlowLogsRetentionInDays" {
  type = number
  validation {
    condition = var.VEN_VFSI_LogGroupFlowLogsRetentionInDays == null || can(contains([
      1,
      3,
      5,
      7,
      14,
      30,
      60,
      90,
      120,
      150,
      180,
      365,
      400,
      545,
      731,
      1096,
      1827,
      2192,
      2557,
      2922,
      3288,
      3653,
      0
    ], var.VEN_VFSI_LogGroupFlowLogsRetentionInDays))
    error_message = "Valid inputs for | variable: var.VEN_VFSI_LogGroupFlowLogsRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "VEN_VFSI_LogGroupFlowLogsKmsKeyId" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "VEN_VFSI_RWP_IamRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "VEN_VFSI_RWP_IamRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}

variable "VEN_VFSI_RWP_IamRoleDescription" {
  type    = string
  default = null
}

variable "VEN_VFSI_RWP_IamRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "VEN_VFSI_RWP_IamRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.VEN_VFSI_RWP_IamRoleMaxSessionDuration >= 3600 && var.VEN_VFSI_RWP_IamRoleMaxSessionDuration <= 43200
    error_message = "Variable VEN_VFSI_RWP_IamRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "VEN_VFSI_RWP_IamRoleNamePrefix" {
  type    = string
  default = null
}

variable "VEN_VFSI_RWP_IamRolePath" {
  type    = string
  default = "/"
}

variable "VEN_VFSI_RWP_IamRolePermissionsBoundary" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "VEN_VFSI_RWP_IamPolicyDescription" {
  type    = string
  default = null
}
variable "VEN_VFSI_RWP_IamPolicyNamePrefix" {
  type    = string
  default = null
}
variable "VEN_VFSI_RWP_IamPolicyPath" {
  type    = string
  default = "/"
}
variable "VEN_VFSI_RWP_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "VEN_VFSI_RWP_IamPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}




#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log#argument-reference

variable "VEN_VFSI_FlowLogTrafficType" {
  type = string
  validation {
    condition = contains([
      "ACCEPT",
      "REJECT",
      "ALL"
    ], var.VEN_VFSI_FlowLogTrafficType)
    error_message = "Valid inputs for | variable: var.VEN_VFSI_FlowLogTrafficType | are: ACCEPT,REJECT, ALL"
  }
}

variable "VEN_VFSI_FlowLogdeliverCrossAccountRole" {
  type    = string
  default = null
}

variable "VEN_VFSI_FlowLogEniId" {
  type    = string
  default = null
}

variable "VEN_VFSI_FlowLogSubnetId" {
  type    = string
  default = null
}

variable "VEN_VFSI_FlowLogtransitGatewayId" {
  type    = string
  default = null
}

variable "VEN_VFSI_FlowLogTransitGatewayAttatchmentId" {
  type    = string
  default = null
}

variable "VEN_VFSI_FlowLogLogFormat" {
  type    = string
  default = null
}

variable "VEN_VFSI_FlowLogMaxAggregationInterval" {
  type    = number
  default = null
}

variable "VEN_VFSI_FlowLogDestinationOptions" {
  type = object({
    file_format                = optional(string, null)
    hive_compatible_partitions = optional(bool, null)
    per_hour_partition         = optional(bool, null)
  })
  default = null
}



#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip#argument-reference

variable "VEN_EipNatAddress" {
  type    = string
  default = null
}

variable "VEN_EipNatAssociateWithPrivateIp" {
  type    = string
  default = null
}

variable "VEN_EipNatCustomerOwnedIpv4Pool" {
  type    = string
  default = null
}

variable "VEN_EipNatDomain" {
  type    = bool
  default = null
}

variable "VEN_EipNatInstance" {
  type    = string
  default = null
}

variable "VEN_EipNatIpamPoolId" {
  type    = string
  default = null
}

variable "VEN_EipNatNetworkBorderGroup" {
  type    = string
  default = null
}

variable "VEN_EipNatNetworkInterface" {
  type    = string
  default = null
}

variable "VEN_EipNatPublicIpv4Pool" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway#argument-reference

variable "VEN_NatAllocationId" {
  type    = string
  default = null
}

variable "VEN_NatConnectivityType" {
  type    = string
  default = null
  validation {
    condition = var.VEN_NatConnectivityType == null || can(contains([
      "private",
      "public"
    ], var.VEN_NatConnectivityType))
    error_message = "Valid inputs for | variable: var.VEN_NatConnectivityType | are: private, and public"
  }
}

variable "VEN_NatPrivateIp" {
  type    = string
  default = null
}

variable "VEN_NatSubnetId" {
  type = string
}

variable "VEN_NatSecondaryAllocationIds" {
  type    = list(string)
  default = null
}

variable "VEN_NatSecondaryPrivateIpAddressCount" {
  type    = string
  default = null
}

variable "VEN_NatSecondaryPrivateIpAddresses" {
  type    = list(string)
  default = null
}

#---