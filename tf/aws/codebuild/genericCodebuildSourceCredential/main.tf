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

resource "aws_codebuild_source_credential" "credentials" {
  auth_type   = var.credentialsAuthType
  server_type = var.credentialsServerType
  token       = var.credentialsToken
  user_name   = var.credentialsUserName
}