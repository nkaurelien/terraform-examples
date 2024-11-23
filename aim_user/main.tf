locals {
  account_id = data.aws_caller_identity.current.account_id
}

data "aws_iam_user" "tfuser" {
  user_name = "TF-user"
}

resource "aws_iam_user" "nkaurelien" {
  name = "nkaurelien"
  path = "/internal/"
}

resource "aws_iam_user" "admin_user" {
  name = "admin"
  path = "/internal/"
}

