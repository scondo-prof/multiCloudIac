variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "projectName" {
  type = string
}

variable "creator" {
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table#argument-reference

variable "routeTableVpcId" {
  type = string
}

variable "routeTableRoutes" {
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

variable "routeTablePropagatingVgws" {
  type    = list(string)
  default = null
}