provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

module "serviceAccount" {
  source = "../genericServiceAccount"

  projectId                               = var.projectId
  gcpRegion                               = var.gcpRegion
  resourceName                            = var.resourceName
  serviceAccountAccountId                 = var.serviceAccountAccountId
  serviceAccountDisabled                  = var.serviceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.serviceAccountCreateIgnoreAlreadyExists
}

module "role" {
  source = "../genericGoogleProjectIamRole"

  roleId          = var.roleId
  projectId       = var.projectId
  gcpRegion       = var.gcpRegion
  resourceName    = var.resourceName
  rolePermissions = var.rolePermissions
  roleStage       = var.roleStage
}

module "iamBinding" {
  source = "../genericProjectIamBinding"

  projectId         = var.projectId
  iamBindingRole    = "projects/${var.projectId}/roles/${module.role.roleRoleId}"
  iamBindingMembers = ["serviceAccount:${module.serviceAccount.serviceAccountEmail}"]
}