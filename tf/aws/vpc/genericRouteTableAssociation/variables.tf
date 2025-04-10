variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association#argument-reference

variable "routeTableAssociationObjects" {
  type = list(object({
    subnet_id = opriotnal(string, null)
    gateway_id = optional(string, null)
    route_table_id = string
  }))
}