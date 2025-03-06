variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule#argument-reference

variable "domainIdentityDomain" {
  type = string
}