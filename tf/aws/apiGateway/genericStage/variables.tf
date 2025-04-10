variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

variable "projectName" {
  type = string
}

variable "createdBy" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "tfModule" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage#argument-reference

variable "stageRestApiId" {
  type = string
}

variable "stageDeploymentId" {
  type = string
}

variable "stageAccessLogSettings" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage#access-log-settings
  type = object({
    destination_arn = string
    format          = string
  })
  default = null
}

variable "stageCacheClusterEnabled" {
  type    = bool
  default = null
}

variable "stageCacheClusterSize" {
  type = number
  validation {
    condition = var.stageCacheClusterSize == null || can(contains([
      0.5,
      1.6,
      6.1,
      13.5,
      28.4,
      58.2,
      118,
      237
    ], var.stageCacheClusterSize))
    error_message = "Valid inputs for | variable: var.stageCacheClusterSize | are: 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237"
  }
  default = null
}

variable "stageCanarySettings" {
  type = object({
    deployment_id            = string
    percent_traffic          = optional(string, null)
    stage_variable_overrides = optional(map(string), null)
    use_stage_cache          = optional(bool, null)
  })
  default = null
}

variable "stageClientCertificateId" {
  type    = string
  default = null
}

variable "stageDescription" {
  type    = string
  default = null
}

variable "stageDocumentationVersion" {
  type    = string
  default = null
}

variable "stageVariables" {
  type    = map(string)
  default = null
}

variable "stageXrayTracingEnabled" {
  type    = bool
  default = null
}