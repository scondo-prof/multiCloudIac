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

variable "VFSI_SubnetObjects" {
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
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table#argument-reference


variable "VFSI_RouteTablePublicRoutes" {
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

variable "VFSI_RouteTableObjects" {
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