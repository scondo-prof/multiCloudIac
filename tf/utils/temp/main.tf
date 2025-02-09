
    module "BWV" {
  source = "../../aws/s3/_BWV_bucketWithVersioning"
awsRegion = var.awsRegion
resourceName = var.resourceName
BWV_S3BucketPrefix = var.IRIPSB_BWV_S3BucketPrefix
BWV_S3BucketForceDestroy = var.IRIPSB_BWV_S3BucketForceDestroy
BWV_S3BucketObjectLockEnabled = var.IRIPSB_BWV_S3BucketObjectLockEnabled
projectName = var.projectName
creator = var.creator
deployedDate = var.deployedDate
additionalTags = var.additionalTags
BWV_S3BucketVersioningConfigurationStatus = var.IRIPSB_BWV_S3BucketVersioningConfigurationStatus
BWV_S3BucketVersioningConfigurationMfaDelete = var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete
BWV_S3BucketVersioningExpectedBucketOwner = var.IRIPSB_BWV_S3BucketVersioningExpectedBucketOwner
BWV_S3BucketVersioningMfa = var.IRIPSB_BWV_S3BucketVersioningMfa
}

#---
