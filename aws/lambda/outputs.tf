output "lambda_function_arn" {
  value = aws_lambda_function.terraform_lambda_func.arn
}

output "lambda_function_invoke_url" {
  value = aws_lambda_function.terraform_lambda_func.invoke_arn
}

output "lambda_function_version" {
  value = aws_lambda_function.terraform_lambda_func.version
}

output "lambda_function_source_code_size" {
  value = aws_lambda_function.terraform_lambda_func.source_code_size
}

output "lambda_function_last_modified" {
  value = aws_lambda_function.terraform_lambda_func.last_modified
}

output "api_gateway_id" {
  value = aws_apigatewayv2_api.lambda_api.id
}

output "api_gateway_url" {
  value = aws_apigatewayv2_api.lambda_api.api_endpoint
}
output "api_gateway_execution_arn" {
  value = aws_apigatewayv2_api.lambda_api.execution_arn
}
output "api_gateway_stage_name" {
  value = aws_apigatewayv2_stage.lambda_stage.name
}

output "web_invoke_lambda_url" {
  value = "${aws_apigatewayv2_api.lambda_api.api_endpoint}/${aws_apigatewayv2_stage.lambda_stage.name}/?key1=World"

}

# output "lambda_response" {
#   value = data.http.invoke_lambda.response_body
# }