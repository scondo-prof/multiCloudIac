variable "awsRegion" {
  type    = string
  default = "us-east-1"
}

variable "resourceName" {
  type = string
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

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#argument-reference
variable "lambdaFunctionRole" {
  type = string
}

variable "lambdaFunctionArchitectures" {
  type    = list(string)
  default = null
}

variable "lambdaFunctionCodeSigningConfigArn" {
  type    = string
  default = null
}

variable "lambdaFunctionDeadLetterConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#dead_letter_config
  type = object({
    target_arn = string
  })
  default = null
}

variable "lambdaFunctionDescription" {
  type    = string
  default = null
}

variable "lambdaFunctionEnvironment" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#environment
  type = object({
    variables = optional(map(string))
  })
  default = null
}

variable "lambdaFunctionEphemeralStorage" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#ephemeral_storage
  type = object({
    size = number
  })
  default = null
}

variable "lambdaFunctionFileSystemConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#file_system_config
  type = object({
    arn              = string
    local_mount_path = string
  })
  default = null
}

variable "lambdaFunctionFilename" {
  type    = string
  default = null
}

variable "lambdaFunctionHandler" {
  type    = string
  default = null
}

variable "lambdaFunctionImageConfig" {
  type = object({
    command           = optional(string, null)
    entry_point       = optional(string, null)
    working_directory = optional(string, null)
  })
  default = null
}

variable "lambdaFunctionImageUri" {
  type    = string
  default = null
}

variable "lambdaFunctionKmsKeyArn" {
  type    = string
  default = null
}

variable "lambdaFunctionLayers" {
  type    = list(string)
  default = null
}

variable "lambdaFunctionLoggingConfig" {
  type = object({
    application_log_level = optional(string, null)
    log_format            = string
    log_group             = optional(string, null)
    system_log_level      = optional(string, null)
  })
  default = null
}

variable "lambdaFunctionMemorySize" {
  type = number
  validation {
    condition     = var.lambdaFunctionMemorySize == null || can(var.lambdaFunctionMemorySize >= 128 && var.lambdaFunctionMemorySize <= 10240)
    error_message = "var.lambdaFunctionMemorySize must be Greater than or Equal to 128 AND Less Than or Equal to 10240"
  }
  default = null
}

variable "lambdaFunctionPackageType" {
  type = string
  validation {
    condition = var.lambdaFunctionPackageType == null || can(contains([
      "Zip",
      "Image"
    ], var.lambdaFunctionPackageType))
    error_message = "Valid inputs for | variable: var.lambdaFunctionPackageType | are: Zip, Image"
  }
  default = null
}

variable "lambdaFunctionPublish" {
  type    = bool
  default = null
}

variable "lambdaFunctionReservedConcurrentExecutions" {
  type    = number
  default = null
}

variable "lambdaFunctionReplaceSecurityGroupsOnDestroy" {
  type    = bool
  default = null
}

variable "lambdaFunctionReplacementSecurityGroupIds" {
  type    = list(string)
  default = null
}

variable "lambdaFunctionRuntime" {
  type = string
  validation {
    condition = var.lambdaFunctionRuntime == null || can(contains([
      "nodejs",
      "nodejs4.3",
      "nodejs6.10",
      "nodejs8.10",
      "nodejs10.x",
      "nodejs12.x",
      "nodejs14.x",
      "nodejs16.x",
      "java8",
      "java8.al2",
      "java11",
      "python2.7",
      "python3.6",
      "python3.7",
      "python3.8",
      "python3.9",
      "dotnetce1.0",
      "dotnetce2.0",
      "dotnetce2.1",
      "dotnetce3.1",
      "dotnet6",
      "dotnet8",
      "nodejs4.3-edge",
      "go1.x",
      "ruby2.5",
      "ruby2.7",
      "provided",
      "provided.al2",
      "nodejs18.x",
      "python3.10",
      "java17",
      "ruby3.2",
      "ruby3.3",
      "python3.11",
      "nodejs20.x",
      "provided.al2023",
      "python3.12",
      "java21",
      "python3.13",
      "nodejs22.x"
    ], var.lambdaFunctionRuntime))
    error_message = "Valid inputs for | variable: var.lambdaFunctionRuntime | are: nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, dotnet8, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2, ruby3.3, python3.11, nodejs20.x, provided.al2023, python3.12, java21, python3.13, nodejs22.x"
  }
  default = null
}

variable "lambdaFunctionS3Bucket" {
  type    = string
  default = null
}

variable "lambdaFunctionS3Key" {
  type    = string
  default = null
}

variable "lambdaFunctionS3ObjectVersion" {
  type    = string
  default = null
}

variable "lambdaFunctionSkipDestroy" {
  type    = bool
  default = null
}

variable "lambdaFunctionSourceCodeHash" {
  type    = string
  default = null
}

variable "lambdaFunctionSnapStart" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#snap_start
  type = object({
    apply_on = string
  })
  default = null
}

variable "lambdaFunctionTimeout" {
  type = number
  validation {
    condition     = var.lambdaFunctionTimeout == null || can(var.lambdaFunctionTimeout >= 3 && var.lambdaFunctionTimeout <= 900)
    error_message = "var.lambdaFunctionTimeout must be Greater than or Equal to 3 AND Less Than or Equal to 900"
  }
  default = null
}

variable "lambdaFunctionTracingConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#tracing_config
  type = object({
    mode = string
  })
  default = null
}

variable "lambdaFunctionVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#vpc_config
  type = object({
    ipv6_allowed_for_dual_stack = optional(bool, null)
    security_group_ids          = list(string)
    subnet_ids                  = list(string)
  })
  default = null
}