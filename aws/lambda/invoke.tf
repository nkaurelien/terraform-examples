# provider "http" {}

# data "http" "invoke_lambda" {
#   url = "${aws_apigatewayv2_api.lambda_api.api_endpoint}/${aws_apigatewayv2_stage.lambda_stage.name}/?key1=World"

#   request_headers = {
#     Accept = "application/json"
#   }
# }
