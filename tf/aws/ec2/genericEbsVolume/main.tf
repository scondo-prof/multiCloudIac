terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.awsRegion
}

resource "aws_ebs_volume" "ebsVolume" {
  availability_zone    = var.ebsVolumeAvailabilityZone
  encrypted            = var.ebsVolumeEncrypted
  final_snapshot       = var.ebsVolumeFinalSnapshot
  iops                 = var.ebsVolumeIops
  multi_attach_enabled = var.ebsVolumeMultiAttachEnabled
  size                 = var.ebsVolumeSize
  snapshot_id          = var.ebsVolumeSnapshotId
  outpost_arn          = var.ebsVolumeOutpostArn
  type                 = var.ebsVolumeType
  kms_key_id           = var.ebsVolumeKmsKeyId
  tags = merge({
    Project      = var.projectName
    CreatedBy    = var.createdBy
    DeployedDate = var.deployedDate
    TfModule     = var.tfModule
  }, var.additionalTags)
  throughput = var.ebsVolumeThroughput
}