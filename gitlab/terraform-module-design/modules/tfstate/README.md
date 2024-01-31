<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_kms_key.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dynamodb_name"></a> [dynamodb\_name](#input\_dynamodb\_name) | DynamoDB名 | `string` | `null` | no |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | S3バケット名 | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_s3_bucket_server_side_encryption_configuration_id"></a> [aws\_s3\_bucket\_server\_side\_encryption\_configuration\_id](#output\_aws\_s3\_bucket\_server\_side\_encryption\_configuration\_id) | S3暗号化されているtfstate用S3バケット名 |
| <a name="output_dynamodb_name"></a> [dynamodb\_name](#output\_dynamodb\_name) | 作成されたDynamoDB名 |
| <a name="output_s3_bucket_acl_id"></a> [s3\_bucket\_acl\_id](#output\_s3\_bucket\_acl\_id) | ACLが設定されているtfstate用S3バケット名 |
| <a name="output_s3_bucket_ownership_controls_id"></a> [s3\_bucket\_ownership\_controls\_id](#output\_s3\_bucket\_ownership\_controls\_id) | S3 Bucket Ownership Controlsで管理されるtfstate用S3バケット名 |
| <a name="output_s3_bucket_versioning_id"></a> [s3\_bucket\_versioning\_id](#output\_s3\_bucket\_versioning\_id) | バージョニング設定がされているtfstate用S3バケット名 |
| <a name="output_s3_id"></a> [s3\_id](#output\_s3\_id) | S3バケットのID |
| <a name="output_s3_kms_key_arn"></a> [s3\_kms\_key\_arn](#output\_s3\_kms\_key\_arn) | tfstate用S3バケットの暗号化用鍵のARN |
<!-- END_TF_DOCS -->