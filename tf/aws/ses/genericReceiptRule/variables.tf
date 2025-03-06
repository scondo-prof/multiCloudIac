variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule#argument-reference

variable "receiptRuleObjects" {
  type = list(object({
    rule_set_name = string
    after = optional(string, null)
    enabled = optional(bool, null)
    recipients = optional(list(string), null)
    scan_enabled = optional(bool, null)
    tls_policy = optional(string, null)

    add_header_action = optional(object({
      header_name = string
      header_value = string
      position = number
    }), null)

    
  }))
}