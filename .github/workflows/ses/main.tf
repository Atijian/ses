variable "sender" {
  description = "The email address to send from"
  type        = string
}

variable "recipient" {
  description = "The email address to send to"
  type        = string
}

variable "subject" {
  description = "The subject of the email"
  type        = string
}

resource "aws_ses_email_identity" "sender" {
  email = var.sender
}

resource "aws_ses_email_identity" "recipient" {
  email = var.recipient
}


resource "null_resource" "send_email" {
  provisioner "local-exec" {
    command = <<EOT
aws ses send-email \
  --from "${var.sender}" \
  --destination "ToAddresses=${var.recipient}" \
  --message "Subject={Data=${var.subject},Charset=utf8},Body={Text={Data=Hello, this is a test email sent using Terraform and SES.,Charset=utf8}}" \
  --output json > output.json

if [ $? -eq 0 ]; then
  echo "Email sent successfully!"
else
  echo "Failed to send email."
fi
EOT
  }
}