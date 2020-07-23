output "instance_dns" {
  value = aws_instance.ssn_web.public_dns

}

output "new_instance_public_IP" {
  value = aws_instance.ssn_web.public_ip
}


output "new_instance_private_IP" {
  value = aws_instance.ssn_web.private_ip
}
