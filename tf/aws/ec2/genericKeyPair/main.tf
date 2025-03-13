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

resource "aws_key_pair" "keyPair" {
  key_name        = var.keyPairName
  key_name_prefix = var.keyPairNamePrefix
  public_key      = var.keyPairPublicKey
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.creator
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}