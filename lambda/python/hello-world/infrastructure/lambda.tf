resource "aws_lambda_function" "container_lambda" {
  function_name = var.function_name
  image_uri     = format("%s/%s:%s", local.ecr.uri, var.function_name, var.function_version)

  role          = var.role
  architectures = ["arm64"]
  memory_size   = var.lambda_memory_size
  timeout       = var.lambda_timeout
  package_type  = "Image"

  depends_on = [
    aws_ecr_repository.localstack
  ]
}
