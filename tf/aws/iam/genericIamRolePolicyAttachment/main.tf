terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.awsRegion
}

resource "aws_iam_role_policy_attachment" "policyAttachment" {
  role       = var.policyAttachmentRoleName
  policy_arn = var.policyAttachmentPolicyArn
}
