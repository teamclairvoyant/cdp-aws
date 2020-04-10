output "LOG_ROLE" {
  description = "Logs Storage and Audits - Instance Profile."
  value = module.cdp-iam.log
}

output "RANGER_AUDIT_ROLE" {
  description = "Logs Storage and Audits - Ranger Audit Role."
  value = module.cdp-iam.ranger_audit
}

output "IDBROKER_ROLE" {
  description = "Data Access - Instance Profile."
  value = module.cdp-iam.idbroker
}

output "DATALAKE_ADMIN_ROLE" {
  description = "Data Access - Data Access Role."
  value = module.cdp-iam.datalake_admin
}

