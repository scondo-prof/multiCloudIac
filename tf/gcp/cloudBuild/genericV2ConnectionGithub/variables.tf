variable "projectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "connectionOauthTokenSecretVersion" {
  type = string
}

variable "connectionDisabled" {
  type    = bool
  default = false
}