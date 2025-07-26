terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.1"
    }
  }

  backend "s3" {
    bucket = "bucket"
    key    = "github/test_instance.tfstate"
    # dynamodb_table = "data-recon-terraform-bootstrap-state-lock-table"
    encrypt = true
  }
}

resource "tls_private_key" "private_key" {
  count       = var.create_key_pair ? 1 : 0
  algorithm   = var.private_key_object["algorithm"]
  ecdsa_curve = var.private_key_object["ecdsa_curve"]
  rsa_bits    = var.private_key_object["rsa_bits"]
}

resource "aws_key_pair" "key_pair" {
  count           = var.create_key_pair ? 1 : 0
  key_name        = var.key_pair_object["key_name"]
  key_name_prefix = var.key_pair_object["key_name_prefix"]
  public_key      = tls_private_key.private_key[0].public_key_openssh

  tags = merge({
    Name = "${var.resource_name}-key-pair"
    "Project" : var.project_name
    "Created By" : var.created_by
    "Terraform Repository" : var.terraform_repository
    "Environment" : var.environment
  }, var.tags)
}