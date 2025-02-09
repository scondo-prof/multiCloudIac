variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/site_verification_token#argument-reference
variable "tokenType" {
  type = string
  validation {
    condition = contains([
      "INET_DOMAIN",
      "SITE"
    ], var.tokenType)
    error_message = "Valid inputs for | variable: var.tokenType | are: INET_DOMAIN, SITE"
  }
}

variable "tokenIdentifier" {
  type = string
}

variable "tokenVerificationMethod" {
  type = string
  validation {
    condition = contains([
      "ANALYTICS",
      "DNS_CNAME",
      "DNS_TXT",
      "FILE",
      "META",
      "TAG_MANAGER"
    ], var.tokenVerificationMethod)
    error_message = "Valid inputs for | variable: var.tokenVerificationMethod | are: ANALYTICS, DNS_CNAME, DNS_TXT, FILE, META, TAG_MANAGER"
  }
}