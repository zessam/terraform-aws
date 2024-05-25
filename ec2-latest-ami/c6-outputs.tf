output "instance_publicip" {
  description = "EC2 ip"
  value       = aws_instance.myec2.public_ip
}

output "instance_publicdns" {
  description = "EC2 dns"
  value       = aws_instance.myec2.public_dns
}