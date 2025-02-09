provider "google" {
  project = var.projectId
  region  = var.region
}

data "google_iam_policy" "policyData" {
  binding {
    role = var.policyDataRole
    members = var.policyDataMembers
  }
}

resource "google_compute_subnetwork_iam_policy" "policy" {
  project = var.projectId
  region = var.region
  subnetwork = var.policySubnetworkId
  policy_data = data.google_iam_policy.policyData.policy_data
}