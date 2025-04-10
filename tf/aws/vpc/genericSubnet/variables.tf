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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet#argument-reference

variable "subnetObjects" {
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

variable "subnetVpcId" {
  type = string
}