variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_cache_policy#argument-reference

variable "cachePolicyMinTtl" {
  type = number
}

variable "cachePolicyMaxTtl" {
  type = number
  default = null
}

variable "cachePolicyDefaultTtl" {
  type = number
  default = null
}

variable "cachePolicyComment" {
  type = string
  default = null
}