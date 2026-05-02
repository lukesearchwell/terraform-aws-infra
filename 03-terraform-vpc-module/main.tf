terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "tf-state-sysops"
    key = "vpc/terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "tf-state-lock"
    encrypt = true
  }
}

provider "aws" {
    region = var.aws_region
    profile = var.aws_profile  
}

module "vpc" {
    source = "./modules/vpc"

    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr
    public_subnet_a_cidr = var.public_subnet_a_cidr
    public_subnet_b_cidr = var.public_subnet_b_cidr
    private_subnet_a_cidr = var.private_subnet_a_cidr
    private_subnet_b_cidr = var.private_subnet_b_cidr
    az_a = var.az-a
    az_b = var.az-b
}