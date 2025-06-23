variable "region" {
  description = "AWS region"
  type = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type = string
  default = "10.11.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDR blocks"
  type = list(string)
  default = ["10.11.1.0/24", "10.11.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDR blocks"
  type = list(string)
  default = ["10.11.3.0/24", "10.11.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type = list(string)
  default = ["us-east-1a", "us-east-1b",]
}

variable "instance_type" {
  description = "EC@ instance type"
  type = string
  default = "t2.medium"
}

variable "allowed_ips" {
  description = "List of allowed IPs for security group rules"
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "key_name" {
  description = "Name of the key pair"
  type = string
  default = "aretha_franklin_key"
}