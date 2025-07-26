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

resource "aws_secretsmanager_secret_version" "secret_version" {
  count = var.create_secret_version ? 1 : 0

  secret_id      = var.secret_version_object["secret_id"]
  secret_string  = var.secret_version_object["secret_string"] != null ? jsonencode(var.secret_version_object["secret_string"]) : null
  secret_binary  = var.secret_version_object["secret_binary"]
  version_stages = var.secret_version_object["version_stages"]
}