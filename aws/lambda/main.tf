provider "aws" {
  region = "eu-central-1"
}


data "archive_file" "zip_the_python_code" {
  type        = "zip"
  source_dir  = "${path.module}/python/"
  output_path = "${path.module}/python/hello-python.zip"
}

resource "aws_lambda_function" "terraform_lambda_func" {
  filename         = "${path.module}/python/hello-python.zip"
  function_name    = "Test_Lambda_Function"
  role             = aws_iam_role.lambda_role.arn
  handler          = "index.lambda_handler"
  runtime          = "python3.8"
  depends_on       = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
  source_code_hash = data.archive_file.zip_the_python_code.output_base64sha256
  environment {
    variables = {
      LOG_GROUP_NAME = aws_cloudwatch_log_group.lambda_log_group.name
    }
  }
}


# data "aws_lambda_function" "selected_lambda_function" {
#   function_name = aws_lambda_function.terraform_lambda_func.function_name
# }

resource "aws_cloudwatch_log_group" "lambda_log_group" {
  name              = "/aws/lambda/Test_Lambda_Function"
  retention_in_days = 14
}
