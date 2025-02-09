variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_response#argument-reference

variable "methodResponseRestApiId" {
  type = string
}

variable "methodResponseResourceId" {
  type = string
}

variable "methodResponseHttpMethod" {
  type = string
  validation {
    condition = contains([
      "GET",
      "POST",
      "PUT",
      "DELETE",
      "HEAD",
      "OPTIONS",
      "ANY"
    ], var.methodResponseHttpMethod)
    error_message = "Valid inputs for | variable: var.methodResponseHttpMethod | are: GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY"
  }
}

variable "methodResponseStatusCode" {
  type = number
}

variable "methodResponseModels" {
  type    = map(string)
  default = null
}

variable "methodResponseParameters" {
  type    = map(string)
  default = null
}