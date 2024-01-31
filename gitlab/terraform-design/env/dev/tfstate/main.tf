module "tfstate" {
  source = "git::https://gitlab.expo.cncg.io/CloudNative-AP/terraform-module-design//modules/tfstate?ref=0.0.1"

  s3_bucket_name = var.s3_bucket_name
  dynamodb_name  = var.dynamodb_name
}
 