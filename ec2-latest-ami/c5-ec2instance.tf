resource "aws_instance" "myec2" {
  ami = data.aws_ami.amzlinux2
  instance_type = var.instance_type
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh, aws_security_group.vpc-web]
  tags = {
    "Name" = "dev"
  }
}