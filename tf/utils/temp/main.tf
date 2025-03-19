
module "databaseInstance" {
  source                               = "../genericCloudSqlDatabaseInstance"
  gcpProjectId                         = var.gcpProjectId
  gcpRegion                            = var.gcpRegion
  databaseInstanceSettings             = var.CSDIU_DatabaseInstanceSettings
  projectName                          = var.projectName
  deployedDate                         = var.deployedDate
  createdBy                            = var.createdBy
  tfModule                             = var.tfModule
  additionalTags                       = var.additionalTags
  databaseInstanceDatabaseVersion      = var.CSDIU_DatabaseInstanceDatabaseVersion
  databseInstanceName                  = var.databseInstanceName
  databaseInstanceMaintenanceVersion   = var.CSDIU_DatabaseInstanceMaintenanceVersion
  databaseInstanceMasterInstanceName   = var.CSDIU_DatabaseInstanceMasterInstanceName
  databaseInstanceReplicaConfiguration = var.CSDIU_DatabaseInstanceReplicaConfiguration
  databaseInstanceRootPassword         = var.CSDIU_DatabaseInstanceRootPassword
  databaseInstanceEncryptionKeyName    = var.CSDIU_DatabaseInstanceEncryptionKeyName
  databaseInstanceDeletionProtection   = var.CSDIU_DatabaseInstanceDeletionProtection
  databaseInstanceRestoreBackupContext = var.CSDIU_DatabaseInstanceRestoreBackupContext
  databaseInstanceClone                = var.CSDIU_DatabaseInstanceClone
}

#---

module "database" {
  source                 = "../genericCloudSqlDatabase"
  gcpProjectId           = var.gcpProjectId
  gcpRegion              = var.gcpRegion
  resourceName           = var.resourceName
  databaseInstance       = var.CSDIU_DatabaseInstance
  databaseCharset        = var.CSDIU_DatabaseCharset
  databaseCollation      = var.CSDIU_DatabaseCollation
  databaseDeletionPolicy = var.CSDIU_DatabaseDeletionPolicy
}

#---

module "databaseUser" {
  source                     = "../genericCloudSqlDatabaseUser"
  gcpProjectId               = var.gcpProjectId
  gcpRegion                  = var.gcpRegion
  databaseUserInstance       = var.CSDIU_DatabaseUserInstance
  resourceName               = var.resourceName
  databaseUserPassword       = var.CSDIU_DatabaseUserPassword
  databaseUserType           = var.CSDIU_DatabaseUserType
  databaseUserDeletionPolicy = var.CSDIU_DatabaseUserDeletionPolicy
  databaseUserHost           = var.CSDIU_DatabaseUserHost
  databaseUserPasswordPolicy = var.CSDIU_DatabaseUserPasswordPolicy
}

#---

module "secret" {
  source                       = "../../secretsManager/genericSecret"
  gcpProjectId                 = var.gcpProjectId
  gcpRegion                    = var.gcpRegion
  secretReplicationAuto        = var.CSDIU_SecretReplicationAuto
  secretReplicationUserManaged = var.CSDIU_SecretReplicationUserManaged
  resourceName                 = var.resourceName
  projectName                  = var.projectName
  deployedDate                 = var.deployedDate
  createdBy                    = var.createdBy
  tfModule                     = var.tfModule
  additionalTags               = var.additionalTags
  secretAnnotations            = var.CSDIU_SecretAnnotations
  secretVersionAliases         = var.CSDIU_SecretVersionAliases
  secretVersionDestroyTtl      = var.CSDIU_SecretVersionDestroyTtl
  secretTopics                 = var.CSDIU_SecretTopics
  secretExpireTime             = var.CSDIU_SecretExpireTime
  secretTtl                    = var.CSDIU_SecretTtl
  secretRotation               = var.CSDIU_SecretRotation
}

#---

module "secretVersion" {
  source               = "../../secretsManager/genericSecretVersion"
  gcpProjectId         = var.gcpProjectId
  gcpRegion            = var.gcpRegion
  secretVersionObjects = concat([{
    secret_data = module.databaseUser.databaseUserName
  },
  {
    secret_data = module.databaseUser.databaseUserPassword
  },
  {
    secret_data = module.database.databaseName
  },
  ], var.CSDIU_SecretVersionObjects)
  
  secretVersionSecret  = module.secret.secretName
}

#---