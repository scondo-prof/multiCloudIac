terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    github = {
      source = "integrations/github"
      version = "6.3.0"
    }
  }
}

provider "github" {
  owner = var.githubOrganization
  token = var.githubToken
}

provider "aws" {
  region = var.awsRegion
}

module "ghOrgSecret" {
  source               = "../../github/org/genericOrgSecret"
  githubOrganization   = var.githubOrganization
  githubToken          = var.githubToken
  resourceName         = var.resourceName
  secretVisibility     = var.GOSAS_GhOrgSecretVisibility
  secretPlaintextValue = var.GOSAS_GhOrgSecretPlaintextValue
  secretRepositoryIds  = var.GOSAS_GhOrgSecretRepositoryIds
}

module "awsSecret" {
  source = "../../aws/secretsmanager/secretWithVersion"

  awsRegion                  = var.awsRegion
  secretKmsKeyId            = var.GOSAS_AwsSecretKmsKeyId
  resourceName               = "${var.resourceName}-github-org"
  secretPolicy               = var.GOSAS_AwsSecretPolicy
  secretRecoveryWindowInDays = var.GOSAS_AwsSecretRecoveryWindowInDays
  secretReplica              = var.GOSAS_AwsSecretReplica
  secretForceSecretOverwrite = var.GOSAS_AwsSecretForceSecretOverwrite
  projectName                = var.projectName
  creator                    = var.creator
  deployedDate               = var.deployedDate
  additionalTags       = var.additionalTags
  secretVersionSecretString = merge({
    (module.ghOrgSecret.secretName) : (module.ghOrgSecret.secretPlainTextValue)
    "Organization" : (var.githubOrganization)
  }, var.GOSAS_AwsSecretVersionAdditionalSecretString)
  secretVersionSecretBinary = var.GOSAS_AwsSecretVersionSecretBinary
  secretVersionStages       = var.GOSAS_AwsSecretVersionStages


}