variable "projectId" {
  type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "policyDataMembers" {
  type = list(string)
}

variable "policySecretId" {
  type = string
}