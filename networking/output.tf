output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}