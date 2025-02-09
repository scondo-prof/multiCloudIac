variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "secretVersionSecretId" {
  type = string
}

variable "secretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "secretVersionSecretBinary" {
  type    = string
  default = null
}

variable "secretVersionStages" {
  type    = list(string)
  default = null
}