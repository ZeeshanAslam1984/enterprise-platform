variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "allowed_http_cidrs" {
  description = "CIDR blocks allowed to access HTTP"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to access SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
