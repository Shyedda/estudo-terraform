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
  region  = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ea3c35c5c3284d82"
  instance_type = "t2.micro"
  key_name = "estudo-iac"
  tags = {
    Name = "segunda-instancia"
  }
}