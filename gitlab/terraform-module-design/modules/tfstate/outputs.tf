output "s3_id" {
  description = "S3バケットのID"
  value       = aws_s3_bucket.main.id
}

output "s3_bucket_ownership_controls_id" {
  description = "S3 Bucket Ownership Controlsで管理されるtfstate用S3バケット名"
  value       = aws_s3_bucket_ownership_controls.main.id
}

output "s3_bucket_acl_id" {
  description = "ACLが設定されているtfstate用S3バケット名"
  value       = aws_s3_bucket_acl.main.id
}

output "s3_bucket_versioning_id" {
  description = "バージョニング設定がされているtfstate用S3バケット名"
  value       = aws_s3_bucket_versioning.main.id
}

output "aws_s3_bucket_server_side_encryption_configuration_id" {
  description = "S3暗号化されているtfstate用S3バケット名"
  value       = aws_s3_bucket_server_side_encryption_configuration.main.id
}

output "s3_kms_key_arn" {
  description = "tfstate用S3バケットの暗号化用鍵のARN"
  value       = aws_kms_key.main.arn
}

output "dynamodb_name" {
  description = "作成されたDynamoDB名"
  value       = aws_dynamodb_table.main.name
}
