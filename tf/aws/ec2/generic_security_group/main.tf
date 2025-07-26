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

resource "aws_security_group" "sg" {
  count                  = var.create_sg ? 1 : 0
  description            = var.sg_object["description"]
  egress                 = var.sg_object["egress"]
  ingress                = var.sg_object["ingress"]
  name                   = var.sg_object["name"]
  name_prefix            = var.sg_object["name_prefix"]
  revoke_rules_on_delete = var.sg_object["revoke_rules_on_delete"]

  tags = merge({
    Name = "${var.resource_name}-sg"
    "Project" : var.project_name
    "Created By" : var.created_by
    "Terraform Repository" : var.terraform_repository
    "Environment" : var.environment
  }, var.tags)

  vpc_id = var.sg_object["vpc_id"]
}