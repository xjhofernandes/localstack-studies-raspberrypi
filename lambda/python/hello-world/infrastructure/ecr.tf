resource "aws_ecr_repository" "localstack" {
  name                 = var.function_name
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }
}


resource "null_resource" "deploy_image" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    working_dir = "../"
    command = <<EOT
      docker build -t ${var.function_name}:${var.function_version} .
      docker tag ${var.function_name}:${var.function_version} ${local.ecr.uri}/${var.function_name}:${var.function_version}
      docker push ${local.ecr.uri}/${var.function_name}:${var.function_version}
    EOT
  }

  depends_on = [ aws_ecr_repository.localstack ]
}
