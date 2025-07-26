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

resource "aws_iam_policy_attachment" "pa" {
  count      = var.create_pa ? 1 : 0
  name       = "${var.resource_name}-pa"
  users      = var.pa_objects["users"]
  roles      = var.pa_objects["roles"]
  groups     = var.pa_objects["groups"]
  policy_arn = var.pa_objects["policy_arn"]
}