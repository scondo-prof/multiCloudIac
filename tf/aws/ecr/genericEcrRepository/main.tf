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

resource "aws_ecr_repository" "ecrRepository" {
  name = "${var.resourceName}-repository"

  dynamic "encryption_configuration" {
    for_each = var.ecrRepositoryEncryptionConfiguration != null ? [var.ecrRepositoryEncryptionConfiguration] : []
    content {
      encryption_type = encryption_configuration.value["encryption_type"]
      kms_key         = encryption_configuration.value["kms_key"]
    }
  }

  force_delete         = var.ecrRepositoryForceDelete
  image_tag_mutability = var.ecrRepositoryImageTagMutability

  dynamic "image_scanning_configuration" {
    for_each = var.ecrRepositoryImageScanningConfiguration != null ? [var.ecrRepositoryImageScanningConfiguration] : []
    content {
      scan_on_push = image_scanning_configuration.value["scan_on_push"]
    }
  }

  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
}