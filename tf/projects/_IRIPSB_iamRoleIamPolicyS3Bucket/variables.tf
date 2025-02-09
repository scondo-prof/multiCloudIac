variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "IRIPSB_S3BucketForceDestroy" {
  type    = bool
  default = true
}

variable "projectName" {
  type = string
}

variable "creator" {
  type    = string
  default = "Scott Condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#argument-reference
variable "IRIPSB_BWV_S3BucketPrefix" {
  type    = string
  default = null
}

variable "IRIPSB_BWV_S3BucketForceDestroy" {
  type    = bool
  default = true
}

variable "IRIPSB_BWV_S3BucketObjectLockEnabled" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#argument-reference
variable "IRIPSB_BWV_S3BucketVersioningConfigurationStatus" {
  type = string
  validation {
    condition = contains([
      "Enabled",
      "Suspended",
      "Disabled"
    ], var.IRIPSB_BWV_S3BucketVersioningConfigurationStatus)
    error_message = "Valid inputs for | variable: var.IRIPSB_BWV_S3BucketVersioningConfigurationStatus | are: Enabled, Suspended, or Disabled"
  }
}

variable "IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete" {
  type = string
  validation {
    condition = var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete == null || can(contains([
      "Enabled",
      "Disabled"
    ], var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete))
    error_message = "Valid inputs for | variable: var.IRIPSB_BWV_S3BucketVersioningConfigurationMfaDelete | are: Enabled, or Disabled"
  }
  default = null
}

variable "IRIPSB_BWV_S3BucketVersioningExpectedBucketOwner" {
  type    = string
  default = null
}

variable "IRIPSB_BWV_S3BucketVersioningMfa" {
  type    = string
  default = null
}

#---

variable "IRIPSB_IamRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "IRIPSB_IamRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, null)
    Condition = optional(map(map(string)), null)
    Principal = optional(map(list(string)), null)
  }))
}

variable "IRIPSB_IamRoleDescription" {
  type    = string
  default = null
}

variable "IRIPSB_IamRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "IRIPSB_IamRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.IRIPSB_IamRoleMaxSessionDuration >= 3600 && var.IRIPSB_IamRoleMaxSessionDuration <= 43200
    error_message = "Variable IRIPSB_IamRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "IRIPSB_IamRoleNamePrefix" {
  type    = string
  default = null
}

variable "IRIPSB_IamRolePath" {
  type    = string
  default = "/"
}

variable "IRIPSB_IamRolePermissionsBoundary" {
  type    = string
  default = null
}

#--

variable "IRIPSB_IamPolicyDescription" {
  type    = string
  default = null
}

variable "IRIPSB_IamPolicyNamePrefix" {
  type    = string
  default = null
}

variable "IRIPSB_IamPolicyPath" {
  type    = string
  default = "/"
}

variable "IRIPSB_IamPolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "additionalPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, null)
    Condition = optional(map(map(list(string))), null)
    Principal = optional(map(list(string)), null)
  }))
  default = []
}