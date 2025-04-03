variable "awsRegion" {
  type    = string
  default = "us-east-1"
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

variable "resourceName" {
  type = string
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair#argument-reference

#---
variable "tlsProxy" { #https://registry.terraform.io/providers/hashicorp/tls/latest/docs#optional
  type = object({
    from_env = optional(bool, null)
    password = optional(string, null)
    url      = optional(string, null)
    username = optional(string, null)
  })
  default = null
}

#https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema

variable "KPTPKWS_Ec2PrivateKeyAlgorithm" {
  type = string
  validation {
    condition = contains([
      "RSA",
      "ECDSA",
      "ED25519"
    ], var.KPTPKWS_Ec2PrivateKeyAlgorithm)
    error_message = "Valid inputs for | variable: var.KPTPKWS_Ec2PrivateKeyAlgorithm | are: RSA, ECDSA, ED25519"
  }
}

variable "KPTPKWS_Ec2PrivateKeyEcdsaCurve" {
  type = string
  validation {
    condition = var.KPTPKWS_Ec2PrivateKeyEcdsaCurve == null || can(contains([
      "P224",
      "P256",
      "P384",
      "P521"
    ], var.KPTPKWS_Ec2PrivateKeyEcdsaCurve))
    error_message = "Valid inputs for | variable: var.KPTPKWS_Ec2PrivateKeyEcdsaCurve | are: P224, P256, P384, P521"
  }
  default = null
}

variable "KPTPKWS_Ec2PrivateKeyRsaBits" {
  type    = number
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/KPTPKWS_SWV_Secretsmanager_KPTPKWS_SWV_Secret#argument-reference

variable "KPTPKWS_SWV_SecretDescription" {
  type    = string
  default = null
}

variable "KPTPKWS_SWV_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "KPTPKWS_SWV_SecretNamePrefix" {
  type    = string
  default = null
}

variable "KPTPKWS_SWV_SecretPolicy" {
  type    = string
  default = null
}

variable "KPTPKWS_SWV_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "KPTPKWS_SWV_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "KPTPKWS_SWV_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}



#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference


variable "KPTPKWS_SWV_SecretVersionSecretString" {
  type    = map(string)
  default = {}
}

variable "KPTPKWS_SWV_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "KPTPKWS_SWV_SecretVersionStages" {
  type    = list(string)
  default = null
}



#---
