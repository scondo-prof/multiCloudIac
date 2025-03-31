
module "Secret" {
  source                       = "../genericSecret"
  gcpProjectId                 = var.gcpProjectId
  gcpRegion                    = var.gcpRegion
  secretReplicationAuto        = var.SWSV_SecretReplicationAuto
  secretReplicationUserManaged = var.SWSV_SecretReplicationUserManaged
  resourceName                 = var.resourceName
  projectName                  = var.projectName
  deployedDate                 = var.deployedDate
  createdBy                    = var.createdBy
  tfModule                     = var.tfModule
  additionalTags               = var.additionalTags
  secretAnnotations            = var.SWSV_SecretAnnotations
  secretVersionAliases         = var.SWSV_SecretVersionAliases
  secretVersionDestroyTtl      = var.SWSV_SecretVersionDestroyTtl
  secretTopics                 = var.SWSV_SecretTopics
  secretExpireTime             = var.SWSV_SecretExpireTime
  secretTtl                    = var.SWSV_SecretTtl
  secretRotation               = var.SWSV_SecretRotation
}

#---

module "SecretVersion" {
  source               = "../genericSecretVersion"
  gcpProjectId         = var.gcpProjectId
  gcpRegion            = var.gcpRegion
  secretVersionObjects = var.SWSV_SecretVersionObjects
  secretVersionSecret  = module.Secret.secretId
}

#---
