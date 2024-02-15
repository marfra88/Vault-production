variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "nodes_number" {
  type    = number
  default = 2
}

variable "vault_role" {
  type    = string
  default = "EC2_vault_role"
}

variable "ami_name" {
  type    = string
  default = "vault-amazonlinux2-vault-course-debugged"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "account" {
  type      = string
  default   = "472760255351"
  sensitive = true
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}
variable "variables_sub_cidr" {
  description = "CIDR Block for the Variables Subnet"
  type        = string
  default     = "10.0.250.0/24"
}
