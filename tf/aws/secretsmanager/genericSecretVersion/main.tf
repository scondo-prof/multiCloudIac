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

resource "aws_secretsmanager_secret_version" "secretVersion" {
  secret_id      = var.secretVersionSecretId
  secret_string  = jsonencode(var.secretVersionSecretString)
  secret_binary  = var.secretVersionSecretBinary
  version_stages = var.secretVersionStages
}