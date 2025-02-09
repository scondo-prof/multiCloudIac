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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log#argument-reference

variable "flowLogTrafficType" {
  type = string
  validation {
    condition = contains([
      "ACCEPT",
      "REJECT",
      "ALL"
    ], var.flowLogTrafficType)
    error_message = "Valid inputs for | variable: var.flowLogTrafficType | are: ACCEPT,REJECT, ALL"
  }
}

variable "flowLogdeliverCrossAccountRole" {
  type    = string
  default = null
}

variable "flowLogEniId" {
  type    = string
  default = null
}

variable "flowLogIamRoleArn" {
  type    = string
  default = null
}

variable "flowLogDestinationType" {
  type = string
  validation {
    condition = var.flowLogDestinationType == null || can(contains([
      "cloud-watch-logs",
      "s3",
      "kinesis-data-firehose"
    ], var.flowLogDestinationType))
    error_message = "Valid inputs for | variable: var.flowLogDestinationType | are: cloud-watch-logs, s3, kinesis-data-firehose"
  }
  default = null
}

variable "flowLogDestination" {
  type    = string
  default = null
}

variable "flowLogSubnetId" {
  type    = string
  default = null
}

variable "flowLogtransitGatewayId" {
  type    = string
  default = null
}

variable "flowLogTransitGatewayAttatchmentId" {
  type    = string
  default = null
}

variable "flowLogVpcId" {
  type    = string
  default = null
}

variable "flowLogLogFormat" {
  type    = string
  default = null
}

variable "flowLogMaxAggregationInterval" {
  type    = number
  default = null
}

variable "flowLogDestinationOptions" {
  type = object({
    file_format                = optional(string, null)
    hive_compatible_partitions = optional(bool, null)
    per_hour_partition         = optional(bool, null)
  })
  default = null
}