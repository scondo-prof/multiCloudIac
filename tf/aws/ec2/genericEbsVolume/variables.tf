variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_volume#argument-reference

variable "ebsVolumeAvailabilityZone" {
  type = string
}

variable "ebsVolumeEncrypted" {
  type    = bool
  default = null
}

variable "ebsVolumeFinalSnapshot" {
  type    = bool
  default = null
}

variable "ebsVolumeIops" {
  type = string
  validation {
    condition = var.ebsVolumeIops == null || can(contains([
      "io1",
      "io2",
      "gp3"
    ], var.ebsVolumeIops))
    error_message = "Valid inputs for | variable: var.ebsVolumeIops | are: io1, io2, gp3"
  }
  default = null
}

variable "ebsVolumeMultiAttachEnabled" {
  type    = bool
  default = null
}

variable "ebsVolumeSize" {
  type    = number
  default = null
}

variable "ebsVolumeSnapshotId" {
  type    = string
  default = null
}

variable "ebsVolumeOutpostArn" {
  type    = string
  default = null
}

variable "ebsVolumeType" {
  type = string
  validation {
    condition = var.ebsVolumeType == null || can(contains([
      "standard",
      "gp2",
      "gp3",
      "io1",
      "io2",
      "sc1",
      "st1"
    ], var.ebsVolumeType))
    error_message = "Valid inputs for | variable: var.ebsVolumeType | are: standard, gp2, gp3, io1, io2, sc1, st1"
  }
  default = null
}

variable "ebsVolumeKmsKeyId" {
  type    = string
  default = null
}

variable "ebsVolumeThroughput" {
  type    = number
  default = null
}