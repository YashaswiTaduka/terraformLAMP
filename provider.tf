#Configuring the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  
  profile = "${var.profile}"
  region  = "${var.region}"
}
