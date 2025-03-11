terraform {
  required_version = "~> 1.5.0"
}

provider "aws" {
  region      = us-east-1
  max_retries = 10

  access_key = "AKIA4DMVQV4SEKFKYO67"
  secret_key = "jfptwumSqh6d4mDyTCCtSuo8NsLSTMl0caGVxIYu"


}

module "ses" {
  source    = "./ses"
  sender    = "legitcydoc@gmail.com"  # Replace with your sender email
  recipient = "attacktitan1989@gmail.com"  # Replace with your recipient email
  subject   = "Test Email from Terraform"
}
