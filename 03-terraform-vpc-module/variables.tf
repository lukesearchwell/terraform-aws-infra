variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "aws_profile" {
  description = "AWS CLI profile"
  type        = string
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_a_cidr" {
  description = "CIDR for Public Subnet A"
  type        = string

}

variable "public_subnet_b_cidr" {
  description = "CIDR for Public Subnet B"
  type        = string

}

variable "private_subnet_a_cidr" {
  description = "CIDR for Private Subnet A"
  type        = string

}

variable "private_subnet_b_cidr" {
  description = "CIDR for Private Subnet B"
  type        = string

}

variable "az-a" {
  description = "Availability Zone A"
  type        = string
}

variable "az-b" {
  description = "Availability Zone B"
  type        = string
}