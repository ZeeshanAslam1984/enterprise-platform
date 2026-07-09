variable "vpc_id" {
  description = "VPC ID where networking resources will be created"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}


variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
}


variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}
