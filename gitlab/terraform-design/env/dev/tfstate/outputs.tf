output "s3_id" {
  description = "S3バケット名"
  value       = module.tfstate.s3_id
}

output "dynamodb_name" {
  description = "DynamoDB名"
  value       = module.tfstate.dynamodab_name
}
