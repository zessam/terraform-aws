variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "instance_keypair" {
  description = "Instance Keypair"
  type = string
  default = "dev"
}
