output "server_id" {
  value = aws_instance.app_server.id
}

output "server_public_ip" {
  #   value = aws_instance.app_server.associate_public_ip_address == "true" ? aws_instance.app_server.public_ip : aws_instance.app_server.public_dns
  value = aws_instance.app_server.public_ip
}

output "server_public_dsn" {
  value = aws_instance.app_server.public_dns
}

output "server_arn" {
  value = aws_instance.app_server.arn
}


output "server_host" {
  value = aws_instance.app_server.host_id
}

# output "is_server_associate_public_ip_address" {
#   value = aws_instance.app_server.associate_public_ip_address
# }


output "key_fingerprint" {
  value = aws_key_pair.deployer.fingerprint
}

output "key_name" {
  value = aws_key_pair.deployer.key_name
}

output "key_id" {
  value = aws_key_pair.deployer.id
}