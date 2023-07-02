terraform {
  required_providers {
    aws = {
      source  =  "hashicorp/aws"
      version =  "~> 5.6.2"    
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mani" {
  ami           = "ami-053b0d53c279acc90"  
  instance_type = "t2.micro"
  tags = {
    Name = "mani-instance"
  }
}