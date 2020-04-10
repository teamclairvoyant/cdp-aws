output "log" {
  value = aws_iam_role.log.name
}

output "ranger_audit" {
  value = aws_iam_role.ranger_audit.name
}

output "idbroker" {
  value = aws_iam_role.idbroker.name
}

output "datalake_admin" {
  value = aws_iam_role.datalake_admin.name
}

