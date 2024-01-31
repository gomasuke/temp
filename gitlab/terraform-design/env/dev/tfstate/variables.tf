variable "s3_bucket_name" {
  description = "S3バケット名"
  type        = string
  default     = "terradesign-dev-s3"
}

variable "dynamodb_name" {
  description = "DynamoDB名"
  type        = string
  default     = "terradesign-dev-tfstate-dynamodb"
}
