terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {
}

resource "random_password" "password" {
  length           = var.passwordLength
  keepers          = var.passwordKeepers
  lower            = var.passwordLower
  min_lower        = var.passwordMinLower
  min_numeric      = var.passwordMinNumeric
  min_special      = var.passwordMinSpecial
  min_upper        = var.passwordMinUpper
  numeric          = var.passwordNumeric
  override_special = var.passwordOverrideSpecial
  special          = var.passwordSpecial
  upper            = var.passwordUpper
}