variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  sensitive = true
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
  description = "AWS Secret Key"
}

variable "aws_token" {
  type        = string
  sensitive   = true
  description = "AWS Token"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
}