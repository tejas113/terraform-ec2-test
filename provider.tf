terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.58.0"
    }
  }

  backend "s3" {
    bucket         = "tejaskalla-remote-state"
    key            = "terraform-ec2-test"
    region         = "us-east-1"
    dynamodb_table = "remote-locking"
  }
}



#provide authentication here
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
