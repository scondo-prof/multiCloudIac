
module "s3Bucket" {
  source                    = "../genericBucket"
  awsRegion                 = var.awsRegion
  resourceName              = var.resourceName
  s3BucketPrefix            = var.BWV_S3BucketPrefix
  s3BucketForceDestroy      = var.BWV_S3BucketForceDestroy
  s3BucketObjectLockEnabled = var.BWV_S3BucketObjectLockEnabled
  projectName               = var.projectName
  createdBy                 = var.createdBy
  tfModule                  = var.tfModule
  deployedDate              = var.deployedDate
  additionalTags            = var.additionalTags
}

#---

module "s3BucketVersioning" {
  source                                   = "../genericBucketVersioning"
  awsRegion                                = var.awsRegion
  s3BucketVersioningBucket                 = module.s3Bucket.s3BucketName
  s3BucketVersioningConfigurationStatus    = var.BWV_S3BucketVersioningConfigurationStatus
  s3BucketVersioningConfigurationMfaDelete = var.BWV_S3BucketVersioningConfigurationMfaDelete
  s3BucketVersioningExpectedBucketOwner    = var.BWV_S3BucketVersioningExpectedBucketOwner
  s3BucketVersioningMfa                    = var.BWV_S3BucketVersioningMfa
}