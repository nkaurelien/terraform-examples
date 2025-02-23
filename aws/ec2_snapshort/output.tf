output "server_id" {
  value = data.aws_instance.app_server.id
}

output "server_public_ip" {
  value = data.aws_instance.app_server.public_ip
}

output "server_public_dsn" {
  value = data.aws_instance.app_server.public_dns
}

output "server_arn" {
  value = data.aws_instance.app_server.arn
}


output "server_ami" {
  value = data.aws_instance.app_server.ami
}


output "server_host" {
  value = data.aws_instance.app_server.host_id
}


output "snapshot_name" {
  value = local.snapshot_name
}


output "snapshot_ami_arn" {
  value = aws_ami_from_instance.snapshot.arn
}

output "snapshot_ami_id" {
  value = aws_ami_from_instance.snapshot.id
}

output "snapshot_ami_arch" {
  value = aws_ami_from_instance.snapshot.architecture
}
