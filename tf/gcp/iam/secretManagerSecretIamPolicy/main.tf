provider "google" {
  project = var.projectId
  region  = var.region
}

data "google_iam_policy" "policyData" {
  binding {
    role = "roles/secretmanager.secretAccessor"
    // Here, 123456789 is the Google Cloud project number for the project that contains the connection.
    members = var.policyDataMembers
  }
}

resource "google_secret_manager_secret_iam_policy" "policy" {
  secret_id = var.policySecretId
  policy_data = data.google_iam_policy.policyData.policy_data
}