terraform {
  required_version = "~> 1.0.0"
}

module "ses" {
  source    = "./ses"
  sender    = "legitcydoc@gmail.com"  # Replace with your sender email
  recipient = "attacktitan1989@gmail.com"  # Replace with your recipient email
  subject   = "Test Email from Terraform"
}
