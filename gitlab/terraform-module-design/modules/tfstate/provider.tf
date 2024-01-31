# クラウドプロバイダ(AWS)の最低必要バージョンの指定
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
