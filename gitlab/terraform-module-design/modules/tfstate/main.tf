# tfstate用S3バケット
## S3バケット作成
resource "aws_s3_bucket" "main" {
  bucket = var.s3_bucket_name
}

## ACLのプライベート設定
resource "aws_s3_bucket_ownership_controls" "main" {
  bucket = aws_s3_bucket.main.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "main" {
  bucket = aws_s3_bucket.main.id
  acl    = "private"

  depends_on = [
    aws_s3_bucket_ownership_controls.main
  ]
}

## バージョニング設定
resource "aws_s3_bucket_versioning" "main" {
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = "Enabled"
  }
}

## 暗号化用のkmsキー作成
resource "aws_kms_key" "main" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

## サーバサイド暗号化の設定
resource "aws_s3_bucket_server_side_encryption_configuration" "main" {
  bucket = aws_s3_bucket.main.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.main.arn
      sse_algorithm     = "aws:kms"
    }
  }
}


# tfstateの排他制御用DynamoDB作成
resource "aws_dynamodb_table" "main" {
  name         = var.dynamodb_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S" # S = String
  }
}
