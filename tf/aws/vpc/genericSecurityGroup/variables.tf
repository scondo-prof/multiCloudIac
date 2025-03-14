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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group#argument-reference

variable "awsSecurityGroupDescription" {
  type    = string
  default = null
}

variable "awsSecurityGroupIngress" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string), null)
    description      = optional(string, null)
    ipv6_cidr_blocks = optional(list(string), null)
    prefix_list_ids  = optional(list(string), null)
    security_groups  = optional(list(string), null)
    self             = optional(bool, null)
  }))
  default = null
}

variable "awsSecurityGroupEgress" {
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string), null)
    description      = optional(string, null)
    ipv6_cidr_blocks = optional(list(string), null)
    prefix_list_ids  = optional(list(string), null)
    security_groups  = optional(list(string), null)
    self             = optional(bool, null)
  }))
  default = null
}

variable "awsSecurityGroupNamePrefix" {
  type    = string
  default = null
}

variable "awsSecurityGroupName" {
  type    = string
  default = null
}

variable "awsSecurityGroupRevokeRulesOnDelete" {
  type    = bool
  default = null
}

variable "awsSecurityGroupVpcId" {
  type    = string
  default = null
}