output "DATALAKE_BUCKET" {
  value = aws_s3_bucket.the_bucket.id
}

output "DATALAKE_BUCKET_LOGS" {
  value = aws_s3_bucket_object.logs_folder.id
}

