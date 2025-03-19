variable "gcpProjectId" {
  type = string
}

variable "gcpRegion" {
  type    = string
  default = "us-east1"
}

variable "resourceName" {
  type = string
}

variable "repositoryParentConnection" {
  type = string
}

variable "repositoryRemoteUri" {
  type = string
}