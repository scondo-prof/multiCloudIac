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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair#argument-reference

variable "keyPairName" {
  type    = string
  default = null
}

variable "keyPairNamePrefix" {
  type    = string
  default = null
}

variable "keyPairPublicKey" {
  type = string
}