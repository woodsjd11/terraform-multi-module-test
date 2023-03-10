terraform {
  required_version = "~>1.1.0"

  backend "s3" {
    bucket         = "temp-api-gateway"
    key            = "temp-gateway-attach.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}