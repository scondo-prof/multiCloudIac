variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_cache_policy#argument-reference

variable "cachePolicyObjects" {
  type = list(object({
    name = optional(string, null)
    id   = optional(string, null)
  }))
}