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



# AWS EC2 Instance Type - List
variable "instance_type_list" {
  description = "EC2 Instnace Type"
  type = list(string)
  default = ["t3.micro", "t3.small"]
}

variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa"  = "t3.small"
    "prod" = "t3.large"
  }
}