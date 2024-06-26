terraform {
  backend "s3" {
    bucket         = "767397811632-terraform-backend"
    key            = "github/vitor-avanco/fastfood-infra-db"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      terraform = "true"
    }
  }
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}


