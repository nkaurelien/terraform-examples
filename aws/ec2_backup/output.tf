output "server_id" {
  value = data.aws_instance.app_server.id
}

output "server_public_ip" {
  #   value = data.aws_instance.app_server.associate_public_ip_address == "true" ? data.aws_instance.app_server.public_ip : data.aws_instance.app_server.public_dns
  value = data.aws_instance.app_server.public_ip
}

output "server_public_dsn" {
  value = data.aws_instance.app_server.public_dns
}

output "server_arn" {
  value = data.aws_instance.app_server.arn
}


output "server_host" {
  value = data.aws_instance.app_server.host_id
}

output "iam_role_arn" {
  value = aws_iam_role.my_bck_up_role.arn
}

output "backup_selection_iam_role_arn" {
  value = aws_backup_selection.myselection.iam_role_arn
}