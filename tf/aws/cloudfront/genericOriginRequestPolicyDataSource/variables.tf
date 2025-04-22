variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_origin_request_policy#argument-reference

variable "orpObjects" {
  type = list(object({
    name = optional(string, null)
    id   = optional(string, null)
  }))
}