resource "aws_instance" "myec2" {
  ami = data.aws_ami.amzlinux2
  instance_type = var.instance_type
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh, aws_security_group.vpc-web]
  for_each = toset(data.aws_availability_zones.my_azones.names)
  availability_zone = each.key
  tags = {
    "Name" = "For-Each-Demo-${each.key}"
  }
}