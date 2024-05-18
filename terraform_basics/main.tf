terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}

resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.inst
   tags = {
    Name = "tf-ec2"
  }
}

import {
  id = "i-0cfc74e59f1b84b6e"

  to = aws_instance.aws-ec2
}