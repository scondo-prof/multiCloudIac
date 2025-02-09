terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.12.0"
    }
  }
}

provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

module "secret" {
  source = "../genericSecret"

  projectId    = var.projectId
  gcpRegion    = var.gcpRegion
  resourceName = var.resourceName
  projectName  = var.projectName
  deployedDate = var.deployedDate
  createdBy    = var.createdBy
}

module "secretVersion" {
  source = "../genericSecretVersion"

  projectId                   = var.projectId
  gcpRegion                   = var.gcpRegion
  secretVersionSecretData     = var.secretVersionSecretData
  secretVersionSecret         = module.secret.secretId
  secretVersionEnabled        = var.secretVersionEnabled
  secretVersionDeletionPolicy = var.secretVersionDeletionPolicy
}