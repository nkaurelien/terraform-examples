# Backup Vault Resource

resource "aws_backup_vault" "my_vault" {
  name = "my-backup-vault"

}

# Backup Plan Resource 

resource "aws_backup_plan" "my_back_plan" {
  name = "my-backup-plan"

  rule {
    rule_name         = "my-backup-rule"
    target_vault_name = aws_backup_vault.my_vault.name
    schedule          = "cron(0 11 * * ? *)" # At 11:00 every day : https://crontab.guru/#0_11_*_*_*
    # start_window = 60
    # completion_window = 180

    lifecycle {
      delete_after = 14
    }
  }
  
}

resource "aws_backup_selection" "myselection" {
  iam_role_arn = aws_iam_role.my_bck_up_role.arn
  name         = "test_selection"
  plan_id      = aws_backup_plan.my_back_plan.id

  resources = [
    data.aws_instance.app_server.arn
  ]
}