
module "cloudbuildTriggerServiceAccount" {
  source                                  = "../../iam/cloudBuildCloudRunRoleServiceBinding"
  gcpProjectId                            = var.gcpProjectId
  gcpRegion                               = var.gcpRegion
  serviceAccountAccountId                 = var.cloudbuildTriggerServiceAccountAccountId
  resourceName                            = var.resourceName
  serviceAccountDisabled                  = var.cloudbuildTriggerServiceAccountDisabled
  serviceAccountDescription               = var.cloudbuildTriggerServiceAccountDescription
  serviceAccountCreateIgnoreAlreadyExists = var.cloudbuildTriggerServiceAccountCreateIgnoreAlreadyExists
  roleId                                  = var.roleId
  roleStage                               = var.roleStage
  roleDescription                         = var.roleDescription
}

#---
