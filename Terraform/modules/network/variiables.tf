variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "region" {
  description = "Region where network is created"
  type        = string
}

variable "public_cidr" {
  description = "CIDR range for public subnet"
  type        = string
}

variable "private_cidr" {
  description = "CIDR range for private subnet"
  type        = string
}
