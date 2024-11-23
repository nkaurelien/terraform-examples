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

# resource "aws_key_pair" "nkaurelien" {
#   key_name   = "user${aws_iam_user.nkaurelien.path}${aws_iam_user.nkaurelien.name}"
#   public_key = file("${path.module}/ssh-key/nkaurelien.pub")
# }


resource "aws_iam_user_ssh_key" "nkaurelien" {
  username   = aws_iam_user.nkaurelien.name
  encoding   = "SSH"
  public_key = file("${path.module}/ssh-key/nkaurelien.pub")
  # public_key = aws_key_pair.nkaurelien.public_key
}