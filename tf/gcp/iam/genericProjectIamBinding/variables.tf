variable "projectId" {
  type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "iamBindingRole" {
  type = string
}

variable "iamBindingMembers" {
  type = list(string)
}