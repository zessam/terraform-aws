Overview
This Terraform configuration sets up a 3-tier architecture within a Virtual Private Cloud (VPC) on AWS. The architecture includes public, private, and database subnets spread across two availability zones, ensuring high availability and fault tolerance.

Architecture
The VPC architecture is organized into the following subnets:

Public Subnets: These subnets host resources that need to be accessible from the internet, such as load balancers or bastion hosts.
Private Subnets: These subnets host application servers and other resources that do not require direct internet access.
Database Subnets: These subnets host database servers and other storage solutions, isolated from both the public and private subnets.
Subnet Configuration
VPC Public Subnets
hcl
Copy code
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}
VPC Private Subnets
hcl
Copy code
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
VPC Database Subnets
hcl
Copy code
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}
Usage
Initialize Terraform:

sh
Copy code
terraform init
Apply the Configuration:

sh
Copy code
terraform apply




