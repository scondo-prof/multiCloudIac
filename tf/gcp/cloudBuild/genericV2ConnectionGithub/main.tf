provider "google" {
  project = var.projectId
  region  = var.gcpRegion
}

resource "google_cloudbuildv2_connection" "connection" {
  location = var.gcpRegion
  name = "${var.resourceName}-connection"

  github_config {

    authorizer_credential {
      oauth_token_secret_version = var.connectionOauthTokenSecretVersion
    }
  }
  disabled = var.connectionDisabled
  project = var.projectId
}