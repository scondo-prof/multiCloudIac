
    module "serviceAccount" {
  source = "../genericServiceAccount"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
serviceAccountAccountId = var.serviceAccountAccountId
resourceName = var.resourceName
serviceAccountDisabled = var.serviceAccountDisabled
serviceAccountDescription = var.serviceAccountDescription
serviceAccountCreateIgnoreAlreadyExists = var.serviceAccountCreateIgnoreAlreadyExists
}

#---

    module "role" {
  source = "../genericGoogleProjectIamRole"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
roleId = var.roleId
resourceName = var.resourceName
rolePermissions = var.rolePermissions
roleStage = var.roleStage
roleDescription = var.roleDescription
}

#---

    module "iamBinding" {
  source = "../genericProjectIamBinding"
gcpProjectId = var.gcpProjectId
gcpRegion = var.gcpRegion
iamBindingRole = var.iamBindingRole
iamBindingMembers = var.iamBindingMembers
}

#---
