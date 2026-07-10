variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "AWS Availability Zone"
  type        = string
  default     = "ap-southeast-2a"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-xxxxxxxxxxxxxxxxx"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
  default     = "your-keypair-name"
}
variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
  type        = string
  default     = "10.0.4.0/24"
}

variable "availability_zone_2" {
  description = "Second AWS Availability Zone"
  type        = string
  default     = "ap-southeast-2b"
}
variable "project_name" {
  type    = string
  default = "platform-engineering-lab"
}
