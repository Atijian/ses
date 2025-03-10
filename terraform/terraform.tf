
provider "aws" {
  region      = var.aws_region
  max_retries = 10

  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_token


}