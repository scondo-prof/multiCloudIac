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
resource "aws_iam_user_policy_attachment" "policyAttatchment" {
  user       = var.policyAttatchmentIamUserName
  policy_arn = var.policyAttatchmentPolicyArn
}