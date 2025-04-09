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

variable "additionalTags" {
  type    = map(string)
  default = {}
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc#argument-reference

variable "VFSNI_VFSI_VpcCidrBlock" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_VpcInstanceTenancy" {
  type = string
  validation {
    condition = var.VFSNI_VFSI_VpcInstanceTenancy == null || can(contains([
      "default",
      "dedicated"
    ], var.VFSNI_VFSI_VpcInstanceTenancy))
    error_message = "Valid inputs for | variable: var.VFSNI_VFSI_VpcInstanceTenancy | are: default, and dedicated"
  }
  default = null
}

variable "VFSNI_VFSI_VpcIpv4IpamPoolId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_VpcIpv4NetmaskLength" {
  type    = number
  default = null
}

variable "VFSNI_VFSI_VpcIpv6CidrBlock" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_VpcIpv6IpamPoolId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_VpcIpv6NetmaskLength" {
  type    = number
  default = null
}

variable "VFSNI_VFSI_VpcIpv6CidrBlockNetworkBorderGroup" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_VpcEnableDnsSupport" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_VpcEnableNetworkAddressUsageMetrics" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_VpcEnableDnsHostnames" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_VpcAssignGeneratedIpv6CidrBlock" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet#argument-reference

variable "VFSNI_VFSI_SubnetAssignIpv6AddressOnCreation" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_SubnetAvailabilityZone" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_SubnetAvailabilityZoneId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_SubnetCidrBlock" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_SubnetCustomerOwnedIpv4Pool" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_SubnetEnableDns64" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_SubnetEnableLniAtDeviceIndex" {
  type    = number
  default = null
}

variable "VFSNI_VFSI_SubnetEnableResourceNameDnsAaaaRecordOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_SubnetEnableResourceNameDnsARecordOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_SubnetIpv6CidrBlock" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_SubnetIpv6Native" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_SubnetMapCustomerOwnedIpOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_SubnetMapPublicIpOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_VFSI_SubnetOutpustArn" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_SubnetPrivateDnsHostnameTypeOnLaunch" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table#argument-reference

variable "VFSNI_VFSI_RouteTableIgRoute" {
  type = object({
    ipv6_cidr_block            = optional(string, null)
    destination_prefix_list_id = optional(string, null)
    carrier_gateway_id         = optional(string, null)
    core_network_arn           = optional(string, null)
    egress_only_gateway_id     = optional(string, null)
    local_gateway_id           = optional(string, null)
    nat_gateway_id             = optional(string, null)
    network_interface_id       = optional(string, null)
    transit_gateway_id         = optional(string, null)
    vpc_endpoint_id            = optional(string, null)
    vpc_peering_connection_id  = optional(string, null)
  })
  default = {}
}

variable "VFSNI_VFSI_RouteTableLocalRoute" {
  type = object({
    ipv6_cidr_block            = optional(string, null)
    destination_prefix_list_id = optional(string, null)
    carrier_gateway_id         = optional(string, null)
    core_network_arn           = optional(string, null)
    egress_only_gateway_id     = optional(string, null)
    local_gateway_id           = optional(string, null)
    nat_gateway_id             = optional(string, null)
    network_interface_id       = optional(string, null)
    transit_gateway_id         = optional(string, null)
    vpc_endpoint_id            = optional(string, null)
    vpc_peering_connection_id  = optional(string, null)
  })
  default = {}
}

variable "VFSNI_VFSI_RouteTableRoutes" {
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

variable "VFSNI_VFSI_RouteTablePropagatingVgws" {
  type    = list(string)
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association#argument-reference

variable "VFSNI_VFSI_RouteTableAssociationGatewayId" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway#argument-reference

variable "VFSNI_VFSI_IgVpcId" {
  type    = string
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log#argument-reference

variable "VFSNI_VFSI_FlowLogTrafficType" {
  type = string
  validation {
    condition = contains([
      "ACCEPT",
      "REJECT",
      "ALL"
    ], var.VFSNI_VFSI_FlowLogTrafficType)
    error_message = "Valid inputs for | variable: var.VFSNI_VFSI_FlowLogTrafficType | are: ACCEPT,REJECT, ALL"
  }
}

variable "VFSNI_VFSI_FlowLogdeliverCrossAccountRole" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogEniId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogIamRoleArn" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogDestinationType" {
  type = string
  validation {
    condition = var.VFSNI_VFSI_FlowLogDestinationType == null || can(contains([
      "cloud-watch-logs",
      "s3",
      "kinesis-data-firehose"
    ], var.VFSNI_VFSI_FlowLogDestinationType))
    error_message = "Valid inputs for | variable: var.VFSNI_VFSI_FlowLogDestinationType | are: cloud-watch-logs, s3, kinesis-data-firehose"
  }
  default = null
}

variable "VFSNI_VFSI_FlowLogDestination" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogSubnetId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogtransitGatewayId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogTransitGatewayAttatchmentId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogVpcId" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogLogFormat" {
  type    = string
  default = null
}

variable "VFSNI_VFSI_FlowLogMaxAggregationInterval" {
  type    = number
  default = null
}

variable "VFSNI_VFSI_FlowLogDestinationOptions" {
  type = object({
    file_format                = optional(string, null)
    hive_compatible_partitions = optional(bool, null)
    per_hour_partition         = optional(bool, null)
  })
  default = null
}




#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/VFSNI_NatSubnet#argument-reference

variable "VFSNI_NatSubnetAssignIpv6AddressOnCreation" {
  type    = bool
  default = null
}

variable "VFSNI_NatSubnetAvailabilityZone" {
  type    = string
  default = null
}

variable "VFSNI_NatSubnetAvailabilityZoneId" {
  type    = string
  default = null
}

variable "VFSNI_NatSubnetCidrBlock" {
  type    = string
  default = null
}

variable "VFSNI_NatSubnetCustomerOwnedIpv4Pool" {
  type    = string
  default = null
}

variable "VFSNI_NatSubnetEnableDns64" {
  type    = bool
  default = null
}

variable "VFSNI_NatSubnetEnableLniAtDeviceIndex" {
  type    = number
  default = null
}

variable "VFSNI_NatSubnetEnableResourceNameDnsAaaaRecordOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_NatSubnetEnableResourceNameDnsARecordOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_NatSubnetIpv6CidrBlock" {
  type    = string
  default = null
}

variable "VFSNI_NatSubnetIpv6Native" {
  type    = bool
  default = null
}

variable "VFSNI_NatSubnetMapCustomerOwnedIpOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_NatSubnetMapPublicIpOnLaunch" {
  type    = bool
  default = null
}

variable "VFSNI_NatSubnetOutpustArn" {
  type    = string
  default = null
}

variable "VFSNI_NatSubnetPrivateDnsHostnameTypeOnLaunch" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table#argument-reference

variable "VFSNI_NatRouteTableNatRoute" {
  type = object({
    gateway_id                 = optional(string, null)
    ipv6_cidr_block            = optional(string, null)
    destination_prefix_list_id = optional(string, null)
    carrier_gateway_id         = optional(string, null)
    core_network_arn           = optional(string, null)
    egress_only_gateway_id     = optional(string, null)
    local_gateway_id           = optional(string, null)
    network_interface_id       = optional(string, null)
    transit_gateway_id         = optional(string, null)
    vpc_endpoint_id            = optional(string, null)
    vpc_peering_connection_id  = optional(string, null)
  })
  default = {}
}

variable "VFSNI_NatRouteTableLocalRoute" {
  type = object({
    ipv6_cidr_block            = optional(string, null)
    destination_prefix_list_id = optional(string, null)
    carrier_gateway_id         = optional(string, null)
    core_network_arn           = optional(string, null)
    egress_only_gateway_id     = optional(string, null)
    local_gateway_id           = optional(string, null)
    nat_gateway_id             = optional(string, null)
    network_interface_id       = optional(string, null)
    transit_gateway_id         = optional(string, null)
    vpc_endpoint_id            = optional(string, null)
    vpc_peering_connection_id  = optional(string, null)
  })
  default = {}
}

variable "VFSNI_NatRouteTableRoutes" {
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

variable "VFSNI_NatRouteTablePropagatingVgws" {
  type    = list(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association#argument-reference

variable "VFSNI_NatSubnetRouteTableAssociationGatewayId" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/VFSNI_NatEip#argument-reference

variable "VFSNI_NatEipAddress" {
  type    = string
  default = null
}

variable "VFSNI_NatEipAssociateWithPrivateIp" {
  type    = string
  default = null
}

variable "VFSNI_NatEipCustomerOwnedIpv4Pool" {
  type    = string
  default = null
}

variable "VFSNI_NatEipDomain" {
  type    = bool
  default = null
}

variable "VFSNI_NatEipInstance" {
  type    = string
  default = null
}

variable "VFSNI_NatEipIpamPoolId" {
  type    = string
  default = null
}

variable "VFSNI_NatEipNetworkBorderGroup" {
  type    = string
  default = null
}

variable "VFSNI_NatEipNetworkInterface" {
  type    = string
  default = null
}

variable "VFSNI_NatEipPublicIpv4Pool" {
  type    = string
  default = null
}

#---


#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway#argument-reference

variable "VFSNI_NatAllocationId" {
  type    = string
  default = null
}

variable "VFSNI_NatConnectivityType" {
  type    = string
  default = null
  validation {
    condition = var.VFSNI_NatConnectivityType == null || can(contains([
      "private",
      "public"
    ], var.VFSNI_NatConnectivityType))
    error_message = "Valid inputs for | variable: var.VFSNI_NatConnectivityType | are: private, and public"
  }
}

variable "VFSNI_NatPrivateIp" {
  type    = string
  default = null
}

variable "VFSNI_NatSecondaryAllocationIds" {
  type    = list(string)
  default = null
}

variable "VFSNI_NatSecondaryPrivateIpAddressCount" {
  type    = string
  default = null
}

variable "VFSNI_NatSecondaryPrivateIpAddresses" {
  type    = list(string)
  default = null
}

#---
