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
    after         = optional(string, null)
    enabled       = optional(bool, null)
    recipients    = optional(list(string), null)
    scan_enabled  = optional(bool, null)
    tls_policy    = optional(string, null)

    add_header_action = optional(object({
      header_name  = string
      header_value = string
      position     = number
    }), null)

    bounce_action = optional(object({
      message         = string
      sender          = string
      smtp_reply_code = string
      status_code     = optional(string, null)
      topic_arn       = optional(string, null)
      position        = number
    }), null)

    lambda_action = optional(object({
      function_arn    = string
      invocation_type = optional(string, null)
      topic_arn       = optional(string, null)
      position        = number
    }), null)

    s3_action = optional(object({
      bucket_name       = string
      iam_role_arn      = optional(string, null)
      kms_key_arn       = optional(string, null)
      object_key_prefix = optional(string, null)
      topic_arn         = optional(string, null)
      position          = number
    }), null)

    sns_action = optional(object({
      topic_arn = string
      position  = number
      encoding  = optional(string, null)
    }), null)

    stop_action = optional(object({
      scope     = string
      topic_arn = optional(string, null)
      position  = number
    }), null)

    workmail_action = object({
      organization_arn = string
      topic_arn        = optional(string, null)
      position         = number
    })
  }))
}