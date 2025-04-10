output "routeTableAssociationId" {
  value = aws_route_table_association.routeTableAssociation[*].id
}