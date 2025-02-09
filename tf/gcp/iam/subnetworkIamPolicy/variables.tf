variable "projectId" {
  type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "policyDataRole" {
  type = string
}

variable "policyDataMembers" {
  type = list(string)
}

variable "policySubnetworkId" {
  type = string
}