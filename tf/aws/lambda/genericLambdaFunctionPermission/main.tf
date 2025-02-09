terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.awsRegion
}

resource "aws_lambda_permission" "lambdaPermission" {
  action                 = var.lambdaPermissionAction
  event_source_token     = var.lambdaPermissionEventSourceToken
  function_name          = var.lambdaPermissionFunctionName
  function_url_auth_type = var.lambdaPermissionUrlAuthType
  principal              = var.lambdaPermissionPrincipal
  qualifier              = var.lambdaPermissionQualifier
  source_account         = var.lambdaPermissionSourceAccount
  source_arn             = var.lambdaPermissionSourceArn
  statement_id           = var.lambdaPermissionStatementId
  statement_id_prefix    = var.lambdaPermissionStatementIdPrefix
  principal_org_id       = var.lambdaPermissionPrincipalOrgId
}