terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  key_name = "iac-terraform-aws"
  tags = {
    Name = "AWS Terraform Instance"
  }
}
