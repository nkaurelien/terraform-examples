output "caller_accound_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}

output "tfuser" {
  value       = data.aws_iam_user.tfuser.id
  description = "ID of existing user with arn:aws:iam::0000000000000:user/TF-user"
}


output "user_name" {
  value = aws_iam_user.admin_user.name
}

output "user_arn" {
  value = aws_iam_user.admin_user.arn
}

# output "nkaurelien_secret" {
#   value = jsondecode(aws_secretsmanager_secret_version.this.secret_string)["access_key_id"]
#   sensitive = true
# }