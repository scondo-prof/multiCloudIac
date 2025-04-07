output "snowflakeRoleFullyQualifiedName" {
  value = module.accountRole.snowflakeRoleFullyQualifiedName
}

output "snowflakeRoleId" {
  value = module.accountRole.snowflakeRoleId
}

output "snowflakeRoleShowOutput" {
  value = module.accountRole.snowflakeRoleShowOutput
}

#---
output "SARARG_GrantPrivilegesId" {
  value = module.grantPrivileges.grantPrivilegesId
}