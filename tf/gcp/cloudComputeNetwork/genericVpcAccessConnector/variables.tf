variable "projectId" {
  type = string
}

variable "region" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "vpcAccessConnectorSubnet" {
  type = string
}

variable "vpcAccessConnectorMachineType" {
  type    = string
  default = "e2-micro"
}

variable "vpcAccessConnectorMinInstances" {
  type = number
  validation {
    condition     = var.vpcAccessConnectorMinInstances >= 2 && var.vpcAccessConnectorMinInstances <= 9
    error_message = "Variable vpcAccessConnectorMinInstances must be greater than or equal to 2 and less than or equal to 9."
  }
  default = 2
}

variable "vpcAccessConnectorMaxInstances" {
  type = number
  validation {
    condition     = var.vpcAccessConnectorMaxInstances >= 3 && var.vpcAccessConnectorMaxInstances <= 10
    error_message = "Variable vpcAccessConnectorMaxInstances must be greater than or equal to 3 and less than or equal to 10."
  }
  default = 3
}