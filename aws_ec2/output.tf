output "" {
  value = aws_instance.db1.instance_type
}

output "public_ip" {
  value = aws_instance.db1.public_ip
}

output "private_ip" {
  value = aws_instance.db1.private_ip
}