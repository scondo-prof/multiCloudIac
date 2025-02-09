variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference
variable "policyAttachmentRoleName" {
  type = string
}

variable "policyAttachmentPolicyArn" {
  type = string
}