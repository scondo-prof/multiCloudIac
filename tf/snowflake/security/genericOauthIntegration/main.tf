terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.97.0"
    }
  }
}

provider "snowflake" {
  account                = var.snowflakeAccount # required if not using profile. Can also be set via SNOWFLAKE_ACCOUNT env var
  private_key            = var.snowflakePrivateKey
  private_key_passphrase = var.snowflakePrivateKeyPassphrase
  role                   = var.snowflakeRole
  host                   = var.snowflakeHost
}