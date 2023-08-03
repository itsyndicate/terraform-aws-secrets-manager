variable "secret_name" {
  description = "AWS Secrets Manager secret name"
  type        = string
  default     = null
}

variable "secret_keys" {
  description = "List of AWS Secrets Manager secret keys"
  type        = list(string)
  default     = null
}
