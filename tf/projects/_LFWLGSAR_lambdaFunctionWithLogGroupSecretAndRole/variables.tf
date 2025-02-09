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

variable "creator" {
  type    = string
  default = "scott-condo"
}

variable "deployedDate" {
  type = string
}

variable "additionalTags" {
  type    = map(string)
  default = {}
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#argument-reference
variable "LFWLGSAR_LambdaFunctionArchitectures" {
  type    = list(string)
  default = null
}

variable "LFWLGSAR_LambdaFunctionCodeSigningConfigArn" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionDeadLetterConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#dead_letter_config
  type = object({
    target_arn = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionDescription" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionEnvironmentVariables" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#environment
  type    = map(string)
  default = {}
}

variable "LFWLGSAR_LambdaFunctionEphemeralStorage" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#ephemeral_storage
  type = object({
    size = number
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionFileSystemConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#file_system_config
  type = object({
    arn              = string
    local_mount_path = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionFilename" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionHandler" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionImageConfig" {
  type = object({
    command           = optional(string, null)
    entry_point       = optional(string, null)
    working_directory = optional(string, null)
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionImageUri" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionKmsKeyArn" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionLayers" {
  type    = list(string)
  default = null
}

variable "LFWLGSAR_LambdaFunctionLoggingConfig" {
  type = object({
    application_log_level = optional(string, null)
    system_log_level      = optional(string, null)
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionMemorySize" {
  type = number
  validation {
    condition     = var.LFWLGSAR_LambdaFunctionMemorySize == null || can(var.LFWLGSAR_LambdaFunctionMemorySize >= 128 && var.LFWLGSAR_LambdaFunctionMemorySize <= 10240)
    error_message = "var.LFWLGSAR_LambdaFunctionMemorySize must be Greater than or Equal to 128 AND Less Than or Equal to 10240"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionPackageType" {
  type = string
  validation {
    condition = var.LFWLGSAR_LambdaFunctionPackageType == null || can(contains([
      "Zip",
      "Image"
    ], var.LFWLGSAR_LambdaFunctionPackageType))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LambdaFunctionPackageType | are: Zip, Image"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionPublish" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LambdaFunctionReservedConcurrentExecutions" {
  type    = number
  default = null
}

variable "LFWLGSAR_LambdaFunctionReplaceSecurityGroupsOnDestroy" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LambdaFunctionReplacementSecurityGroupIds" {
  type    = list(string)
  default = null
}

variable "LFWLGSAR_LambdaFunctionRuntime" {
  type = string
  validation {
    condition = var.LFWLGSAR_LambdaFunctionRuntime == null || can(contains([
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
    ], var.LFWLGSAR_LambdaFunctionRuntime))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LambdaFunctionRuntime | are: nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, dotnet8, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2, ruby3.3, python3.11, nodejs20.x, provided.al2023, python3.12, java21, python3.13, nodejs22.x"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionS3Bucket" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionS3Key" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionS3ObjectVersion" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionSkipDestroy" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LambdaFunctionSourceCodeHash" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionSnapStart" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#snap_start
  type = object({
    apply_on = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionTimeout" {
  type = number
  validation {
    condition     = var.LFWLGSAR_LambdaFunctionTimeout == null || can(var.LFWLGSAR_LambdaFunctionTimeout >= 3 && var.LFWLGSAR_LambdaFunctionTimeout <= 900)
    error_message = "var.LFWLGSAR_LambdaFunctionTimeout must be Greater than or Equal to 3 AND Less Than or Equal to 900"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionTracingConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#tracing_config
  type = object({
    mode = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#vpc_config
  type = object({
    ipv6_allowed_for_dual_stack = optional(bool, null)
    security_group_ids          = list(string)
    subnet_ids                  = list(string)
  })
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference
variable "LFWLGSAR_LambdaFunctionRoleAssumeRolePolicyVersion" {
  type    = string
  default = "2012-10-17"
}

variable "LFWLGSAR_LambdaFunctionRoleAssumeRolePolicy" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}

variable "LFWLGSAR_LambdaFunctionRoleDescription" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionRoleForceDetatchPolicies" {
  type    = bool
  default = false
}

variable "LFWLGSAR_LambdaFunctionRoleMaxSessionDuration" {
  type = number
  validation {
    condition     = var.LFWLGSAR_LambdaFunctionRoleMaxSessionDuration >= 3600 && var.LFWLGSAR_LambdaFunctionRoleMaxSessionDuration <= 43200
    error_message = "Variable LFWLGSAR_LambdaFunctionRoleMaxSessionDuration must be greater than or equal to 3600 and less than or equal to 43200"
  }
  default = 3600
}

variable "LFWLGSAR_LambdaFunctionRoleNamePrefix" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionRolePath" {
  type    = string
  default = "/"
}

variable "LFWLGSAR_LambdaFunctionRolePermissionsBoundary" {
  type    = string
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "LFWLGSAR_LambdaPolicyDescription" {
  type    = string
  default = null
}
variable "LFWLGSAR_LambdaPolicyNamePrefix" {
  type    = string
  default = null
}
variable "LFWLGSAR_LambdaPolicyPath" {
  type    = string
  default = "/"
}
variable "LFWLGSAR_LambdaPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "LFWLGSAR_LambdaPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret#argument-reference

variable "LFWLGSAR_SecretDescription" {
  type    = string
  default = null
}

variable "LFWLGSAR_SecretKmsKeyId" {
  type    = string
  default = null
}

variable "LFWLGSAR_SecretNamePrefix" {
  type    = string
  default = null
}

variable "LFWLGSAR_SecretPolicy" {
  type    = string
  default = null
}

variable "LFWLGSAR_SecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "LFWLGSAR_SecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "LFWLGSAR_SecretForceSecretOverwrite" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "LFWLGSAR_SecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "LFWLGSAR_SecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "LFWLGSAR_SecretVersionStages" {
  type    = list(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "LFWLGSAR_SecretPolicyDescription" {
  type    = string
  default = null
}
variable "LFWLGSAR_SecretPolicyNamePrefix" {
  type    = string
  default = null
}
variable "LFWLGSAR_SecretPolicyPath" {
  type    = string
  default = "/"
}
variable "LFWLGSAR_SecretPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "LFWLGSAR_SecretPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
  default = []
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#argument-reference
variable "LFWLGSAR_LogGroupNamePrefix" {
  type    = string
  default = null
}

variable "LFWLGSAR_LogGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LogGroupClass" {
  type = string
  validation {
    condition = var.LFWLGSAR_LogGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.LFWLGSAR_LogGroupClass))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LogGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "LFWLGSAR_LogGroupRetentionInDays" {
  type = number
  validation {
    condition = var.LFWLGSAR_LogGroupRetentionInDays == null || can(contains([
      1,
      3,
      5,
      7,
      14,
      30,
      60,
      90,
      120,
      150,
      180,
      365,
      400,
      545,
      731,
      1096,
      1827,
      2192,
      2557,
      2922,
      3288,
      3653,
      0
    ], var.LFWLGSAR_LogGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LogGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "LFWLGSAR_LogGroupKmsKeyId" {
  type    = string
  default = null
}