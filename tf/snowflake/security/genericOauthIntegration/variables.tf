variable "snowflakeAccount" {
  type = string
}



variable "snowflakeUsernamePassword" {
  type    = string
  default = null
}

variable "snowflakeAuthenticator" {
  type    = string
  default = null
}

variable "snowflakePrivateKey" {
  type    = string
  default = null
}

variable "snowflakePrivateKeyPassphrase" {
  type    = string
  default = null
}

variable "snowflakeRole" {
  type    = string
  default = "ACCOUNTADMIN"
}

variable "snowflakeHost" {
  type    = string
  default = null
}

variable "snowflakeWarehouse" {
  type    = string
  default = "COMPUTE_WH"
}

variable "azure_ad_issuer" {
  type = string
  default = "sure"
}