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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/VFSI_Vpc#argument-reference

variable "VFSI_VpcCidrBlock" {
  type    = string
  default = null
}

variable "VFSI_VpcInstanceTenancy" {
  type = string
  validation {
    condition = var.VFSI_VpcInstanceTenancy == null || can(contains([
      "default",
      "dedicated"
    ], var.VFSI_VpcInstanceTenancy))
    error_message = "Valid inputs for | variable: var.VFSI_VpcInstanceTenancy | are: default, and dedicated"
  }
  default = null
}

variable "VFSI_VpcIpv4IpamPoolId" {
  type    = string
  default = null
}

variable "VFSI_VpcIpv4NetmaskLength" {
  type    = number
  default = null
}

variable "VFSI_VpcIpv6CidrBlock" {
  type    = string
  default = null
}

variable "VFSI_VpcIpv6IpamPoolId" {
  type    = string
  default = null
}

variable "VFSI_VpcIpv6NetmaskLength" {
  type    = number
  default = null
}

variable "VFSI_VpcIpv6CidrBlockNetworkBorderGroup" {
  type    = string
  default = null
}

variable "VFSI_VpcEnableDnsSupport" {
  type    = bool
  default = null
}

variable "VFSI_VpcEnableNetworkAddressUsageMetrics" {
  type    = bool
  default = null
}

variable "VFSI_VpcEnableDnsHostnames" {
  type    = bool
  default = null
}

variable "VFSI_VpcAssignGeneratedIpv6CidrBlock" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/VFSI_Subnet#argument-reference

variable "VFSI_SubnetAssignIpv6AddressOnCreation" {
  type    = bool
  default = null
}

variable "VFSI_SubnetAvailabilityZone" {
  type    = string
  default = null
}

variable "VFSI_SubnetAvailabilityZoneId" {
  type    = string
  default = null
}

variable "VFSI_SubnetCidrBlock" {
  type    = string
  default = null
}

variable "VFSI_SubnetCustomerOwnedIpv4Pool" {
  type    = string
  default = null
}

variable "VFSI_SubnetEnableDns64" {
  type    = bool
  default = null
}

variable "VFSI_SubnetEnableLniAtDeviceIndex" {
  type    = number
  default = null
}

variable "VFSI_SubnetEnableResourceNameDnsAaaaRecordOnLaunch" {
  type    = bool
  default = null
}

variable "VFSI_SubnetEnableResourceNameDnsARecordOnLaunch" {
  type    = bool
  default = null
}

variable "VFSI_SubnetIpv6CidrBlock" {
  type    = string
  default = null
}

variable "VFSI_SubnetIpv6Native" {
  type    = bool
  default = null
}

variable "VFSI_SubnetMapCustomerOwnedIpOnLaunch" {
  type    = bool
  default = null
}

variable "VFSI_SubnetMapPublicIpOnLaunch" {
  type    = bool
  default = null
}

variable "VFSI_SubnetOutpustArn" {
  type    = string
  default = null
}

variable "VFSI_SubnetPrivateDnsHostnameTypeOnLaunch" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table#argument-reference

variable "VFSI_RouteTableVpcId" {
  type = string
}

variable "VFSI_RouteTableRoutes" {
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
  default = null
}

variable "VFSI_RouteTablePropagatingVgws" {
  type    = list(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association#argument-reference

variable "VFSI_RouteTableAssociationSubnetId" {
  type    = string
  default = null
}

variable "VFSI_RouteTableAssociationGatewayId" {
  type    = string
  default = null
}

variable "VFSI_RouteTableAssociationRouteTableId" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway#argument-reference

variable "VFSI_IgVpcId" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log#argument-reference

variable "VFSI_FlowLogTrafficType" {
  type = string
  validation {
    condition = contains([
      "ACCEPT",
      "REJECT",
      "ALL"
    ], var.VFSI_FlowLogTrafficType)
    error_message = "Valid inputs for | variable: var.VFSI_FlowLogTrafficType | are: ACCEPT,REJECT, ALL"
  }
}

variable "VFSI_FlowLogdeliverCrossAccountRole" {
  type    = string
  default = null
}

variable "VFSI_FlowLogEniId" {
  type    = string
  default = null
}

variable "VFSI_FlowLogIamRoleArn" {
  type    = string
  default = null
}

variable "VFSI_FlowLogDestinationType" {
  type = string
  validation {
    condition = var.VFSI_FlowLogDestinationType == null || can(contains([
      "cloud-watch-logs",
      "s3",
      "kinesis-data-firehose"
    ], var.VFSI_FlowLogDestinationType))
    error_message = "Valid inputs for | variable: var.VFSI_FlowLogDestinationType | are: cloud-watch-logs, s3, kinesis-data-firehose"
  }
  default = null
}

variable "VFSI_FlowLogDestination" {
  type    = string
  default = null
}

variable "VFSI_FlowLogSubnetId" {
  type    = string
  default = null
}

variable "VFSI_FlowLogtransitGatewayId" {
  type    = string
  default = null
}

variable "VFSI_FlowLogTransitGatewayAttatchmentId" {
  type    = string
  default = null
}

variable "VFSI_FlowLogVpcId" {
  type    = string
  default = null
}

variable "VFSI_FlowLogLogFormat" {
  type    = string
  default = null
}

variable "VFSI_FlowLogMaxAggregationInterval" {
  type    = number
  default = null
}

variable "VFSI_FlowLogDestinationOptions" {
  type = object({
    file_format                = optional(string, null)
    hive_compatible_partitions = optional(bool, null)
    per_hour_partition         = optional(bool, null)
  })
  default = null
}

#---