output "snowflakeRoleFullyQualifiedName" {
  value = snowflake_account_role.accountRole.fully_qualified_name
}

output "snowflakeRoleId" {
  value = snowflake_account_role.accountRole.id
}

output "snowflakeRoleShowOutput" {
  value = snowflake_account_role.accountRole.show_output
}