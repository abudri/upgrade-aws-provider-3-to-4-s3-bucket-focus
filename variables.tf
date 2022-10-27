# variables.tf
variable "region" {
  type        = string
  sensitive   = false
  description = "AWS region"
  default     = "us-east-1"
}
