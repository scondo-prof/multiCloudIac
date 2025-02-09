provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}


module "secretWithVersion" {
  source = "../../secretsmanager/secretWithSecretVersion"

  projectId                   = var.projectId
  gcpRegion                   = var.gcpRegion
  resourceName                = var.resourceName
  projectName                 = var.projectName
  deployedDate                = var.deployedDate
  createdBy                   = var.createdBy
  secretVersionSecretData     = var.secretVersionSecretData
  secretVersionEnabled        = var.secretVersionEnabled
  secretVersionDeletionPolicy = var.secretVersionDeletionPolicy
}

module "secretAccessorPolicy" {
  source = "../../iam/secretManagerSecretIamPolicy"

  projectId         = var.projectId
  region            = var.gcpRegion
  policyDataMembers = ["serviceAccount:${var.serviceAccountEmail}"]
  policySecretId    = module.secretWithVersion.secretId
}
module "connection" {
  source = "../genericV2ConnectionGithub"

  projectId                         = var.projectId
  gcpRegion                         = var.gcpRegion
  resourceName                      = var.resourceName
  connectionOauthTokenSecretVersion = module.secretWithVersion.secretVersionName
  connectionDisabled                = var.connectionDisabled
}

module "repository" {
  source = "../genericV2Repository"

  projectId                  = var.projectId
  gcpRegion                  = var.gcpRegion
  resourceName               = var.resourceName
  repositoryParentConnection = module.connection.connectionName
  repositoryRemoteUri        = var.repositoryRemoteUri
}