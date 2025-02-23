# resource "aws_secretsmanager_secret" "user_access" {
#   name = "user_access_key/${aws_iam_user.nkaurelien.name}"
# }

# resource "aws_secretsmanager_secret_version" "this" {
#   secret_id     = aws_secretsmanager_secret.user_access.id
#   secret_string = jsonencode({ access_key_id : aws_iam_access_key.nkaurelien.id, access_key_secret : aws_iam_access_key.nkaurelien.secret })
# }