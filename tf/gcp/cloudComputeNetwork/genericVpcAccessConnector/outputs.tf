output "vpcAccessConnectorId" {
  value = google_vpc_access_connector.vpcAccessConnector.id
}

output "vpcAccessConnectorState" {
  value = google_vpc_access_connector.vpcAccessConnector.state
}

output "vpcAccessConnectorName" {
  value = google_vpc_access_connector.vpcAccessConnector.name
}

output "vpcAccessConnectorSelfLink" {
  value = google_vpc_access_connector.vpcAccessConnector.self_link
}

output "vpcAccessConnectorConnectedProjects" {
  value = google_vpc_access_connector.vpcAccessConnector.connected_projects
}