terraform {
  # tfenvによるバージョン固定
  # 最低限メジャーバージョンの固定を行う
  required_version = ">= 1.0.0, < 2.0.0"

  # ステートファイルを外部で管理する(AWSの場合S3バケット)
  # 排他制御を行うためのDynamoDBを利用する
  backend "s3" {
    bucket         = "terradesign-dev-s3"
    key            = "dev/tfstate/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terradesign-dev-tfstate-dynamodb"
  }

  # プロバイダーの指定とバージョンの指定
  # 最低限メジャーバージョンの固定を行う
  # マイナー / パッチバージョンはterraformで自動的に固定される
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
  # 全てのリソースに共通で付けたいタグを指定する
  default_tags {
    tags = {
      env = "dev"
      pj  = "terraform-design"
    }
  }
}
