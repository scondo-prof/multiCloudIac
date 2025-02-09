provider "google" {
  project = var.projectId
  region  = var.region
}

resource "google_sql_database_instance" "databaseInstance" {
  name             = "${var.resourceName}-database-instance"
  database_version = var.databaseVersion
  region           = var.region
  project = var.projectId
  root_password = var.rootPassword
  deletion_protection = var.deletionProtection

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = var.tier
    edition = var.edition
    user_labels = {
      "project": var.projectName
      "deployed-date": var.deployedDate
      "created-by": var.createdBy
    }
    activation_policy = var.activationPolicy
    availability_type = var.availabilityType
    collation = var.collation
    disk_autoresize = var.diskAutoresize
    disk_autoresize_limit = var.diskAutoresizeLimit
    disk_size = var.diskSize
    disk_type = var.diskType
    ip_configuration {
      ipv4_enabled    = true

      # Configure the authorized networks to allow access from the specific IP
      authorized_networks {
        name  = "${var.resourceName}-authorized-network"
        value = var.databaseInstanceAuthorizedNetworkIpRange  # Replace with your desired IP address or CIDR block
      }
    }
  }
}
