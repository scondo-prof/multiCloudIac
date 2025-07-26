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


resource "aws_iam_policy" "policy" {
  count = var.create_policy ? 1 : 0

  description = var.policy_object["description"]
  name_prefix = var.policy_object["name_prefix"]
  name        = var.policy_object["name"]
  path        = var.policy_object["path"]
  policy = jsonencode({
    Version   = "2012-10-17"
    Statement = var.policy_object["policy_statements"]
  })
  tags = merge({
    Name = "${var.resource_name}-policy"
    "Project" : var.project_name
    "Created By" : var.created_by
    "Terraform Repository" : var.terraform_repository
    "Environment" : var.environment
  }, var.tags)
}