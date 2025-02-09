provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

module "databaseInstance" {
  source = "../genericCloudSqlDatabaseInstance"

  projectId                                = var.projectId
  region                                   = var.gcpRegion
  resourceName                             = var.resourceName
  databaseVersion                          = var.CSDIU_DatabaseInstanceDatabaseVersion
  rootPassword                             = var.CSDIU_DatabaseInstanceRootPassword
  deletionProtection                       = var.CSDIU_DatabaseInstanceDeletionProtection
  tier                                     = var.CSDIU_DatabaseInstanceTier
  edition                                  = var.CSDIU_DatabaseInstanceEdition
  projectName                              = var.projectName
  deployedDate                             = var.deployedDate
  createdBy                                = var.createdBy
  activationPolicy                         = var.CSDIU_DatabaseInstanceActivationPolicy
  availabilityType                         = var.CSDIU_DatabaseInstanceAvailabilityType
  collation                                = var.CSDIU_DatabaseInstanceCollation
  diskAutoresize                           = var.CSDIU_DatabaseInstanceDiskAutoresize
  diskAutoresizeLimit                      = var.CSDIU_DatabaseInstanceDiskAutoresizeLimit
  diskSize                                 = var.CSDIU_DatabaseInstanceDiskSize
  diskType                                 = var.CSDIU_DatabaseInstanceDiskType
  databaseInstanceAuthorizedNetworkIpRange = var.CSDIU_DatabaseInstanceAuthorizedNetworkIpRange
}

module "database" {
  source = "../genericCloudSqlDatabase"

  projectId        = var.projectId
  region           = var.gcpRegion
  resourceName     = var.resourceName
  databaseInstance = module.databaseInstance.name
  deletionPolicy   = var.CSDIU_DatabaseDeletionPolicy
}

module "databaseUser" {
  source = "../genericCloudSqlDatabaseUser"

  projectId          = var.projectId
  region             = var.gcpRegion
  databseInstance    = module.databaseInstance.name
  resourceName       = var.resourceName
  userPassword       = var.CSDIU_DatabaseUserPassword
  userType           = var.CSDIU_DatabaseUserType
  userDeletionPolicy = var.CSDIU_DatabaseUserDeletionPolicy
}

module "databaseSecret" {
  source = "../../secretsmanager/genericSecret"

  projectId    = var.projectId
  gcpRegion    = var.gcpRegion
  resourceName = var.resourceName
  projectName  = var.projectName
  deployedDate = var.deployedDate
  createdBy    = var.createdBy
}

module "databasePublicIpSecretVersion" {
  source = "../../secretsmanager/genericSecretVersion"

  projectId                   = var.projectId
  gcpRegion                   = var.gcpRegion
  secretVersionSecretData     = module.databaseInstance.publicIp
  secretVersionSecret         = module.databaseSecret.secretId
  secretVersionEnabled        = var.CSDIU_DatabasePublicIpSecretVersionEnabled
  secretVersionDeletionPolicy = var.CSDIU_DatabasePublicIpSecretVersionDeletionPolicy
}

module "databaseUserNameSecretVersion" {
  source = "../../secretsmanager/genericSecretVersion"

  projectId                   = var.projectId
  gcpRegion                   = var.gcpRegion
  secretVersionSecretData     = module.databaseUser.name
  secretVersionSecret         = module.databaseSecret.secretId
  secretVersionEnabled        = var.CSDIU_DatabaseUserNameSecretVersionEnabled
  secretVersionDeletionPolicy = var.CSDIU_DatabaseUserNameSecretVersionDeletionPolicy
}

module "databaseUserPasswordSecretVersion" {
  source = "../../secretsmanager/genericSecretVersion"

  projectId                   = var.projectId
  gcpRegion                   = var.gcpRegion
  secretVersionSecretData     = module.databaseUser.password
  secretVersionSecret         = module.databaseSecret.secretId
  secretVersionEnabled        = var.CSDIU_DatabaseUserPasswordSecretVersionEnabled
  secretVersionDeletionPolicy = var.CSDIU_DatabaseUserPasswordSecretVersionDeletionPolicy
}

module "databaseNameSecretVersion" {
  source = "../../secretsmanager/genericSecretVersion"

  projectId                   = var.projectId
  gcpRegion                   = var.gcpRegion
  secretVersionSecretData     = module.database.name
  secretVersionSecret         = module.databaseSecret.secretId
  secretVersionEnabled        = var.CSDIU_DatabaseNameSecretVersionEnabled
  secretVersionDeletionPolicy = var.CSDIU_DatabaseNameSecretVersionDeletionPolicy
}