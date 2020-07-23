output "instance_dns" {
  value = aws_instance.ssn_web.public_dns

}

output "new_instance_public_IP" {
  value = aws_instance.ssn_web.public_ip
}

output "my_security_groups" {
  value = aws_instance.ssn_web.security_groups
}
