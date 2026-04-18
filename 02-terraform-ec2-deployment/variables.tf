variable "aws_region" {
    description = "AWS region for deployment"
    type        = string
}

variable "aws_profile" {
    description = "AWS profile for deployment"
    type        = string
}

variable "instance_name" {
    description = "Instance type"
    type        = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
}

variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type        = string
}

variable "key_name" {
    description = "Key pair name for SSH access"
    type        = string
  
}

