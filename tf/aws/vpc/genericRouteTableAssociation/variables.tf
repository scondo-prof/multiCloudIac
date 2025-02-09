variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association#argument-reference

variable "routeTableAssociationSubnetId" {
  type = string
  default = null
}

variable "routeTableAssociationGatewayId" {
  type = string
  default = null
}

variable "routeTableAssociationRouteTableId" {
  type = string
}