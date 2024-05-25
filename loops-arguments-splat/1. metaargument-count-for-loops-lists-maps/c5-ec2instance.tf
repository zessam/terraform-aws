resource "aws_instance" "myec2" {
  ami = data.aws_ami.amzlinux2
  instance_type = var.instance_type_list[1]
  #instance_type = var.instance_type_map["dev"]
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh, aws_security_group.vpc-web]
  count = 2
  
  
  tags = {
    "Name" = "dev"
  }
}