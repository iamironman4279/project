variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "StrongPassword123!"
}

variable "db_name" {
  default = "medusa_db"
}
