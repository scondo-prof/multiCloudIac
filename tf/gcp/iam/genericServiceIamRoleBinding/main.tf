provider "google" {
  project = var.projectId
  region  = var.region
}

module "serviceAccount" {
  source = "../genericServiceAccount"

  projectId = var.projectId
  region = var.region
  resourceName = var.resourceName
  serviceAccountAccountId = var.serviceAccountAccountId
  serviceAccountDisabled = var.serviceAccountDisabled
  serviceAccountCreateIgnoreAlreadyExists = var.serviceAccountCreateIgnoreAlreadyExists
}

module "iamBinding" {
  source = "../genericProjectIamBinding"

  projectId         = var.projectId
  iamBindingRole    = var.iamBindingRole
  iamBindingMembers = var.iamBindingMembers
}