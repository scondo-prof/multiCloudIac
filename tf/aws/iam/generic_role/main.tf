terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket = "bucket"
    key    = "github/test_instance.tfstate"
    # dynamodb_table = "data-recon-terraform-bootstrap-state-lock-table"
    encrypt = true
  }
}

resource "aws_iam_role" "role" {
  count = var.create_role ? 1 : 0

  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = var.role_object["policy_statements"]
  })
  description           = var.role_object["description"]
  force_detach_policies = var.role_object["force_detach_policies"]
  max_session_duration  = var.role_object["max_session_duration"]
  name                  = var.role_object["name"]
  name_prefix           = var.role_object["name_prefix"]
  path                  = var.role_object["path"]
  permissions_boundary  = var.role_object["permissions_boundary"]

  tags = merge({
    Name = "${var.resource_name}-role"
    "Project" : var.project_name
    "Created By" : var.created_by
    "Terraform Repository" : var.terraform_repository
    "Environment" : var.environment
  }, var.tags)
}