terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3"{
    bucket = "syam-remote-state"
    key="remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "81s-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
