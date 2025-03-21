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
variable "LFWLGSAR_LambdaFunctionsRole" {
  type = string
}

variable "LFWLGSAR_LambdaFunctionsArchitectures" {
  type    = list(string)
  default = null
}

variable "LFWLGSAR_LambdaFunctionsCodeSigningConfigArn" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsDeadLetterConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#dead_letter_config
  type = object({
    target_arn = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsDescription" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsEnvironment" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#environment
  type = object({
    variables = optional(map(string))
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsEphemeralStorage" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#ephemeral_storage
  type = object({
    size = number
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsFileSystemConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#file_system_config
  type = object({
    arn              = string
    local_mount_path = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsFilename" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsHandler" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsImageConfig" {
  type = object({
    command           = optional(string, null)
    entry_point       = optional(string, null)
    working_directory = optional(string, null)
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsImageUri" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsKmsKeyArn" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsLayers" {
  type    = list(string)
  default = null
}

variable "LFWLGSAR_LambdaFunctionsLoggingConfig" {
  type = object({
    application_log_level = optional(string, null)
    log_format            = string
    log_group             = optional(string, null)
    system_log_level      = optional(string, null)
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsMemorySize" {
  type = number
  validation {
    condition     = var.LFWLGSAR_LambdaFunctionsMemorySize == null || can(var.LFWLGSAR_LambdaFunctionsMemorySize >= 128 && var.LFWLGSAR_LambdaFunctionsMemorySize <= 10240)
    error_message = "var.LFWLGSAR_LambdaFunctionsMemorySize must be Greater than or Equal to 128 AND Less Than or Equal to 10240"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionsPackageType" {
  type = string
  validation {
    condition = var.LFWLGSAR_LambdaFunctionsPackageType == null || can(contains([
      "Zip",
      "Image"
    ], var.LFWLGSAR_LambdaFunctionsPackageType))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LambdaFunctionsPackageType | are: Zip, Image"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionsPublish" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LambdaFunctionsReservedConcurrentExecutions" {
  type    = number
  default = null
}

variable "LFWLGSAR_LambdaFunctionsReplaceSecurityGroupsOnDestroy" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LambdaFunctionsReplacementSecurityGroupIds" {
  type    = list(string)
  default = null
}

variable "LFWLGSAR_LambdaFunctionsRuntime" {
  type = string
  validation {
    condition = var.LFWLGSAR_LambdaFunctionsRuntime == null || can(contains([
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
    ], var.LFWLGSAR_LambdaFunctionsRuntime))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LambdaFunctionsRuntime | are: nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, nodejs16.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, python3.9, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, dotnet6, dotnet8, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2, nodejs18.x, python3.10, java17, ruby3.2, ruby3.3, python3.11, nodejs20.x, provided.al2023, python3.12, java21, python3.13, nodejs22.x"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionsS3Bucket" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsS3Key" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsS3ObjectVersion" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsSkipDestroy" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LambdaFunctionsSourceCodeHash" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaFunctionsSnapStart" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#snap_start
  type = object({
    apply_on = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsTimeout" {
  type = number
  validation {
    condition     = var.LFWLGSAR_LambdaFunctionsTimeout == null || can(var.LFWLGSAR_LambdaFunctionsTimeout >= 3 && var.LFWLGSAR_LambdaFunctionsTimeout <= 900)
    error_message = "var.LFWLGSAR_LambdaFunctionsTimeout must be Greater than or Equal to 3 AND Less Than or Equal to 900"
  }
  default = null
}

variable "LFWLGSAR_LambdaFunctionsTracingConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#tracing_config
  type = object({
    mode = string
  })
  default = null
}

variable "LFWLGSAR_LambdaFunctionsVpcConfig" { #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function#vpc_config
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

variable "LFWLGSAR_LambdaGenericPolicyDescription" {
  type    = string
  default = null
}
variable "LFWLGSAR_LambdaGenericPolicyNamePrefix" {
  type    = string
  default = null
}
variable "LFWLGSAR_LambdaGenericPolicyPath" {
  type    = string
  default = "/"
}
variable "LFWLGSAR_LambdaGenericPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "LFWLGSAR_LambdaGenericPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference
variable "LFWLGSAR_LambdaGenericPolicyAttachmentRoleName" {
  type = string
}

variable "LFWLGSAR_LambdaGenericPolicyAttachmentPolicyArn" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/LFWLGSAR_LambdaSecretsmanager_LFWLGSAR_LambdaSecret#argument-reference

variable "LFWLGSAR_LambdaSecretDescription" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaSecretKmsKeyId" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaSecretNamePrefix" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaSecretPolicy" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaSecretRecoveryWindowInDays" {
  type    = number
  default = null
}

variable "LFWLGSAR_LambdaSecretReplica" {
  type = object({
    kms_key_id = optional(string, null)
    region     = string
  })
  default = null
}

variable "LFWLGSAR_LambdaSecretForceSecretOverwrite" {
  type    = bool
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version#argument-reference

variable "LFWLGSAR_LambdaSecretVersionSecretId" {
  type = string
}

variable "LFWLGSAR_LambdaSecretVersionSecretString" {
  type    = map(string)
  default = null
}

variable "LFWLGSAR_LambdaSecretVersionSecretBinary" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaSecretVersionStages" {
  type    = list(string)
  default = null
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy

variable "LFWLGSAR_LambdaSecretPolicyDescription" {
  type    = string
  default = null
}
variable "LFWLGSAR_LambdaSecretPolicyNamePrefix" {
  type    = string
  default = null
}
variable "LFWLGSAR_LambdaSecretPolicyPath" {
  type    = string
  default = "/"
}
variable "LFWLGSAR_LambdaSecretPolicyVersion" {
  type    = string
  default = "2012-10-17"
}
variable "LFWLGSAR_LambdaSecretPolicyDocumentStatements" {
  type = list(object({
    Action    = list(string)
    Effect    = string
    Resource  = list(string)
    Sid       = optional(string, "")
    Condition = optional(map(map(string)), {})
    Principal = optional(map(list(string)), {})
  }))
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment#argument-reference
variable "LFWLGSAR_LambdaSecretPolicyAttachmentRoleName" {
  type = string
}

variable "LFWLGSAR_LambdaSecretPolicyAttachmentPolicyArn" {
  type = string
}

#---

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group#argument-reference


variable "LFWLGSAR_LambdaLogGroupNamePrefix" {
  type    = string
  default = null
}

variable "LFWLGSAR_LambdaLogGroupSkipDestroy" {
  type    = bool
  default = null
}

variable "LFWLGSAR_LambdaLogGroupClass" {
  type = string
  validation {
    condition = var.LFWLGSAR_LambdaLogGroupClass == null || can(contains([
      "STANDARD",
      "INFREQUENT_ACCESS"
    ], var.LFWLGSAR_LambdaLogGroupClass))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LambdaLogGroupClass | are: STANDARD, or INFREQUENT_ACCESS"
  }
  default = null
}

variable "LFWLGSAR_LambdaLogGroupRetentionInDays" {
  type = number
  validation {
    condition = var.LFWLGSAR_LambdaLogGroupRetentionInDays == null || can(contains([
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
    ], var.LFWLGSAR_LambdaLogGroupRetentionInDays))
    error_message = "Valid inputs for | variable: var.LFWLGSAR_LambdaLogGroupRetentionInDays | are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0"
  }
  default = null
}

variable "LFWLGSAR_LambdaLogGroupKmsKeyId" {
  type    = string
  default = null
}

#---
