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

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#argument-reference

variable "vpcAccessConnectorNetwork" {
  type = string
  default = null
}

variable "vpcAccessConnectorIpCidrRange" {
  type = string
  default = null
}

variable "vpcAccessConnectorMachineType" {
  type    = string
  default = null
}

variable "vpcAccessConnectorMinThroughput" {
  type = number
  validation {
    condition = var.vpcAccessConnectorMinThroughput == null || can(contains([
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
], var.vpcAccessConnectorMinThroughput))
    error_message = "Valid inputs for | variable: var.vpcAccessConnectorMinThroughput | are: 200, 300, 400, 500, 600, 700, 800, 900"
  }
  default = null
}

variable "vpcAccessConnectorMinInstances" {
  type = number
  validation {
    condition = var.vpcAccessConnectorMinInstances == null || can(var.vpcAccessConnectorMinInstances >= 2 && var.vpcAccessConnectorMinInstances <= 9)
    error_message = "var.vpcAccessConnectorMinInstances must be Greater than or Equal to 2 AND Less Than or Equal to 9"
  }
  default = null
}

variable "vpcAccessConnectorMaxInstances" {
  type = number
  validation {
    condition = var.vpcAccessConnectorMaxInstances == null || can(var.vpcAccessConnectorMaxInstances >= 3 && var.vpcAccessConnectorMaxInstances <= 10)
    error_message = "var.vpcAccessConnectorMaxInstances must be Greater than or Equal to 3 AND Less Than or Equal to 10"
  }
  default = null
}

variable "vpcAccessConnectorMaxThroughput" {
  type = number
  validation {
    condition = var.vpcAccessConnectorMaxThroughput == null || can(contains([
    300,
    400,
    500,
    600,
    700,
    800,
    900,
    1000
], var.vpcAccessConnectorMaxThroughput))
    error_message = "Valid inputs for | variable: var.vpcAccessConnectorMaxThroughput | are: 300, 400, 500, 600, 700, 800, 900, 1000"
  }
}

variable "vpcAccessConnectorSubnet" {
  type = object({ #https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/vpc_access_connector#nested_subnet
    name = optional(string, null)
    project_id = optional(string, null)
  })
}

