terraform {
  required_providers {
    aws = {
    source = "hashicorp/aws"
    version = "~> 4.16"
  }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04c913012f8977029"
  instance_type = "t2.micro"
    tags = {
        Name = "example-instance"
    }
}
