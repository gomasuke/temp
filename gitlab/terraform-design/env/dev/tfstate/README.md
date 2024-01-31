<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tfstate"></a> [tfstate](#module\_tfstate) | git::https://gitlab.expo.cncg.io/CloudNative-AP/terraform-module-design//modules/tfstate | 0.0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dynamodb_name"></a> [dynamodb\_name](#input\_dynamodb\_name) | DynamoDB名 | `string` | `"terradesign-dev-tfstate-dynamodb"` | no |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | S3バケット名 | `string` | `"terradesign-dev-s3"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamodb_name"></a> [dynamodb\_name](#output\_dynamodb\_name) | DynamoDB名 |
| <a name="output_s3_id"></a> [s3\_id](#output\_s3\_id) | S3バケット名 |
<!-- END_TF_DOCS -->