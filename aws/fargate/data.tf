data "aws_caller_identity" "this" {}
data "aws_ecr_authorization_token" "this" {}
data "aws_region" "this" {}

# data "aws_iam_role" "ecs_task_execution_role" { name = "ecsTaskExecutionRole" }
