terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.52"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  access_key = "{{access_key}}"
  secret_key = "{{secret_key}}"
  region     = "ap-south-1"
}

resource "aws_instance" "ec2" {
  ami             = "ami-0b3acf3edf2397475"
  instance_type   = "t2.micro"
  key_name        = "firstEC2Instance"
  security_groups = [aws_security_group.newDefaultSecurityGroup.name]

  tags = {
    Name = "myNewEC2ForPostgres"
  }
}

resource "aws_security_group" "newDefaultSecurityGroup" {

  ingress {
    from_port   = 0
    to_port     = 5432
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    description = "inbound rule"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "outbound rule"
    from_port   = 0
    protocol    = "TCP"
    to_port     = 65535
  }

}