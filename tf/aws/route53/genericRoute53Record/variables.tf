variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#argument-reference
variable "recordZoneId" {
  type = string
}

variable "recordName" {
  type = string
}

variable "recordType" {
  type = string
  validation {
    condition = contains([
      "A",
      "AAAA",
      "CAA",
      "CNAME",
      "DS",
      "MX",
      "NAPTR",
      "NS",
      "PTR",
      "SOA",
      "SPF",
      "SRV",
       "TXT"
    ], var.recordType)
    error_message = "Valid inputs for | variable: recordType | are: A, AAAA, CAA, CNAME, DS, MX, NAPTR, NS, PTR, SOA, SPF, SRV TXT"
  }
}

variable "recordTtl" {
  type    = number
  default = null
}

variable "recordRecords" {
  type    = list(string)
  default = null
}

variable "recordSetIdentifier" {
  type    = string
  default = null
}

variable "recordHealthCheckId" {
  type    = string
  default = null
}

variable "recordAlias" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#alias
  type = object({
    name                   = string
    zone_id                = string
    evaluate_target_health = bool
  })
  default = null
}

variable "recordCidrRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#cidr-routing-policy
  type = object({
    collection_id = string
    location_name = string
  })
  default = null
}

variable "recordFailoverRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#failover-routing-policy
  type = object({
    type = string
  })
  default = null
}

variable "recordGeolocationRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#geolocation-routing-policy
  type = object({
    continent   = optional(string, null)
    country     = optional(string, null)
    subdivision = optional(string, null)
  })
  default = null
}

variable "recordGeoproximityRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#geoproximityrouting-policy
  type = object({
    aws_region = optional(string, null)
    bias       = optional(number, null)

    coordinates = optional(object({
      latitude  = number
      longitude = number
    }), null)

    local_zone_group = optional(string, null)
  })
  default = null
}

variable "recordLatencyRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#latency-routing-policy
  type = object({
    region = string
  })
  default = null
}

variable "recordMultivalueAnswerRoutingPolicy" {
  type    = bool
  default = null
}

variable "recordWeightedRoutingPolicy" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record#weighted-routing-policy-1
  type = object({
    weight = number
  })
  default = null
}

variable "recordAllowOverwrite" {
  type    = bool
  default = null
}