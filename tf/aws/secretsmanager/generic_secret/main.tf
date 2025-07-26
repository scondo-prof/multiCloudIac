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

resource "aws_secretsmanager_secret" "secret" {
  count = var.create_secret ? 1 : 0

  description             = var.secret_object["description"]
  kms_key_id              = var.secret_object["kms_key_id"]
  name                    = var.secret_object["name"]
  name_prefix             = var.secret_object["name_prefix"]
  policy                  = var.secret_object["policy"] != null ? jsonencode(var.secret_object["policy"]) : null
  recovery_window_in_days = var.secret_object["recovery_window_in_days"]

  dynamic "replica" {
    for_each = var.secret_object["replica"] != null ? var.secret_object["replica"] : []
    content {
      kms_key_id = replica.value["kms_key_id"]
      region     = replica.value["region"]
    }
  }

  force_overwrite_replica_secret = var.secret_object["force_overwrite_replica_secret"]
  tags = merge({
    Name = "${var.resource_name}-secret"
    "Project" : var.project_name
    "Created By" : var.created_by
    "Terraform Repository" : var.terraform_repository
    "Environment" : var.environment
  }, var.tags)

}