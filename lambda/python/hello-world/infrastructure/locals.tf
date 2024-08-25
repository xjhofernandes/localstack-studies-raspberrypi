locals {
  ecr = {
    uri = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${data.aws_region.current.name}.localhost.localstack.cloud:4566"
  }
}
