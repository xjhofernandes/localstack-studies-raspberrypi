variable "lambda_memory_size" {
  type = number
}

variable "lambda_timeout" {
  type = number
}

variable "role" {
  type = string
  default = "arn:aws:iam::000000000000:role/lambda-role"
}

variable "function_name" {
  type = string
}

variable "function_version" {
  type = string
}