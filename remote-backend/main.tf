terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.61.0"
    }
  }
  backend "s3" {
    bucket = "my-tf-test-bucketxxxaxaxaxaxmacmacmac"
    key    = "mac/mytffiles/terraform.tfstate"
    region = "us-east-1" 

       
    # For State Locking
    dynamodb_table = "project-tf"    
  } 
}



# Provider Block
provider "aws" {
  region  = "us-east-1"
}


resource "aws_instance" "ec2demo" {
  ami           = "ami-0ac7b260cf76d8865"
  instance_type = "t3.micro"
}