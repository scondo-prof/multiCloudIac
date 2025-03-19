variable "gcpProject" {
  type = string
}

variable "gcpRegion" {
  type = string
  default = "us-east1"
}

variable "iamBindingRole" {
  type = string
}

variable "iamBindingMembers" {
  type = list(string)
}