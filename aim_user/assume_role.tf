

resource "aws_iam_user_policy_attachment" "admin_access" {
  user       = aws_iam_user.nkaurelien.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
