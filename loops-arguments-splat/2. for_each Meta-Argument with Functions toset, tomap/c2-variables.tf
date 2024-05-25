# AWS Region
variable "aws_region" {
  description = "aws region"
  type        = string
  default = "eu-west-1"
}

variable "instance_type" {
    description = "instance type"
  type        = string
  default = "t2.micro"  
}

variable "instance_keypair" {
  description = "AWS SSH KEY"
  type = string
  default = "dev"
}

