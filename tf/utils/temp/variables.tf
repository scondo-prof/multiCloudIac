#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "CLCC_CodebuildLambdaBuildPolicyDescription" {
  type    = string
  default = null
}
variable "CLCC_CodebuildLambdaBuildPolicyNamePrefix" {
  type    = string
  default = null
}
variable "CLCC_CodebuildLambdaBuildPolicyPath" {
  type    = string
  default = "/"
}
variable "CLCC_CodebuildLambdaBuildPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "CLCC_CodebuildLambdaBuildPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference
variable "CLCC_CodebuildLambdaBuildPolicyAttachmentRoleName" {
  type = string
}

variable "CLCC_CodebuildLambdaBuildPolicyAttachmentPolicyArn" {
  type = string
}

#---
