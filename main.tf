terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.58.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "exmys3" {
  bucket = "my-tf-test-bucketmaccloudtf001xx"

  tags = {
    Name        = "My Bucket - exmys3"
    Environment = "Dev-UpdateTags"
  }
}
