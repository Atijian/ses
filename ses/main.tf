resource "aws_ses_email_identity" "sender" {
  email = "legitcydoc@gmail.com"  # Replace with your sender email
}

resource "aws_ses_email_identity" "recipient" {
    email = "attacktitan1989@gmail.com"
  
}

