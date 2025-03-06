variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_domain_identity#argument-reference

variable "domainIdentityDomain" {
  type = string
}