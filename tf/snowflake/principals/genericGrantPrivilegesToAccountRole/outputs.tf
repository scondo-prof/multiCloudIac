output "grantPrivilegesId" {
  value = snowflake_grant_privileges_to_account_role.grantPrivileges[*].id
}