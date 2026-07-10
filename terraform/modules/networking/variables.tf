variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
  type        = string
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
  type        = string
}

variable "public_subnet_cidr_2" {
  description = "Second public subnet CIDR"
  type        = string
}

variable "private_subnet_cidr_2" {
  description = "Second private subnet CIDR"
  type        = string
}

variable "availability_zone" {
  description = "Primary Availability Zone"
  type        = string
}

variable "availability_zone_2" {
  description = "Secondary Availability Zone"
  type        = string
}
