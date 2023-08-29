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
  # user_data = <<-EOF
  #                 #!/bin/bash
  #                 cd /home/ubuntu
  #                 echo "<h1>Made with Terraform</h1>" > index.html
  #                 nohup busybox httpd -f -p 8080 &
  #                 EOF
  tags = {
    Name = "AWS Terraform Ansible Instance"
  }
}
