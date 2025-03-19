provider "google" {
  project = var.gcpProjectId
  region  = var.gcpRegion
}

resource "google_sql_user" "databaseUser" {
  instance = var.databaseUserInstance
  name = "${var.resourceName}-database-user"
  password = var.databaseUserPassword
  type = var.databaseUserType
  deletion_policy = var.databaseUserDeletionPolicy
  host = var.databaseUserHost
  project = var.gcpProjectId

  dynamic "password_policy" {
    for_each = var.databaseUserPasswordPolicy != null ? [var.databaseUserPasswordPolicy]: []
    content {
      allowed_failed_attempts = password_policy.value["allowed_failed_attempts"]
      password_expiration_duration = password_policy.value["password_expiration_duration"]
      enable_failed_attempts_check = password_policy.value["enable_failed_attempts_check"]
      enable_password_verification = password_policy.value["enable_password_verification"]
    }
  }
}