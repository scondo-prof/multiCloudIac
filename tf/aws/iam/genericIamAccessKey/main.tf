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
resource "aws_iam_access_key" "iamAccessKey" {
  pgp_key = var.iamAccessKeyPgpKey
  status  = var.iamAccessKeyStatus
  user    = var.iamAccessKeyUser
}