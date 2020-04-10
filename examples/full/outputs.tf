output "network" {
  description = "Network name."
  value = module.cdp-vpc.aws_vpc
}

output "LOG_ROLE" {
  description = "Logs Storage and Audits - Instance Profile."
  value = module.cdp-iam.log
}

output "logs-location-base" {
  description = "Logs Storage and Audits - Logs Location Base."
  value = "${module.cdp-s3.DATALAKE_BUCKET}/${module.cdp-s3.DATALAKE_BUCKET_LOGS}"
}

output "RANGER_AUDIT_ROLE" {
  description = "Logs Storage and Audits - Ranger Audit Role."
  value = module.cdp-iam.ranger_audit
}

output "IDBROKER_ROLE" {
  description = "Data Access - Instance Profile."
  value = module.cdp-iam.idbroker
}

output "storage-location-base" {
  description = "Data Access - Storage Locatioon Base."
  value = module.cdp-s3.DATALAKE_BUCKET
}

output "DATALAKE_ADMIN_ROLE" {
  description = "Data Access - Data Access Role."
  value = module.cdp-iam.datalake_admin
}

output "S3Guard-table" {
  description = "DynamoDB Table Name."
  value = module.cdp-dynamodb.table
}

output "cdp-cross-account-role" {
  value = module.cross-account-role.arn
}

