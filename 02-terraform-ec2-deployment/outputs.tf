output "instance_id" {
  value = aws_instance.terraform-ec2-test.id
}

output "public_ip" {
  value = aws_instance.terraform-ec2-test.public_ip
}  
