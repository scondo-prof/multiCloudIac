variable "projectId"{
    type = string
}

variable "region" {
  type = string
  default = "us-east1"
}

variable "resourceName"{
    type = string
}

variable "databaseInstance"{
    type = string
}

variable "deletionPolicy" {
  type = string
  validation {
    condition     = contains(["ABANDON", "DELETE"], var.deletionPolicy)
    error_message = "The only valid options for deletionPolicy are 'ABANDON', 'DELETE'."
  }
}