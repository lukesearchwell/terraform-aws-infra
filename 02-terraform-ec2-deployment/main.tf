terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

data "http" "my_ip" {
  url = "https://checkip.amazonaws.com/"
}

locals {
  allowed_ssh_cidr = "${chomp(data.http.my_ip.response_body)}/32"
}

resource "aws_security_group" "ec2_ssh_sg" {
  name        = "ec2-ssh-sg"
  description = "Security group for EC2 instance with SSH access"

  ingress {
    description = "Allow SSH access from current IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [local.allowed_ssh_cidr]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "terraform-ec2-ssh-sg"
  }
}
resource "aws_instance" "terraform-ec2-test" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.ec2_ssh_sg.name]
  tags = {
    Name = var.instance_name
  }
  
}