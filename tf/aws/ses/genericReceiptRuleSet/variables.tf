variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule_set#argument-reference