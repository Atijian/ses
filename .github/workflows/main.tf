terraform {
  required_version = "~> 1.5.0"
}

provider "aws" {
  region      = var.aws_region
  max_retries = 10

  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_token


}

module "ses" {
  source    = "./ses"
  sender    = "legitcydoc@gmail.com"  # Replace with your sender email
  recipient = "attacktitan1989@gmail.com"  # Replace with your recipient email
  subject   = "Test Email from Terraform"
}
