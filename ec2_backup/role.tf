# IAM Role for Backup
data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["backup.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "my_bck_up_role" {
  name = "my-backup-role"

  assume_role_policy = data.aws_iam_policy_document.assume_role.json

  #   assume_role_policy = jsonencode({
  #     Version = "2012-10-17"
  #     Statement = [
  #       {
  #         Action = "sts:AssumeRole"
  #         Effect = "Allow"
  #         Principal = {
  #           Service = "backup.amazonaws.com"
  #         }
  #       }
  #     ]
  #   })
}


# Attach necessary policies to the IAM role
resource "aws_iam_role_policy_attachment" "backup_policy_attachment" {
  role       = aws_iam_role.my_bck_up_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"
}