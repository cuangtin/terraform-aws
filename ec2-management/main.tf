resource "aws_instance" "web_server" {
  ami           = var.ami # ubuntu 22
  instance_type = var.instance_type

  vpc_security_group_ids = [var.security_group_id]

  root_block_device {
    volume_size = 14          # 14GB size
    volume_type = "gp2"       # General Purpose SSD
  }

  key_name = var.key_name

  tags = {
    Name = var.instance_name
  }
}

resource "aws_eip" "eip_ec2" {
  domain = "vpc"
  address = var.elastic_ip
  instance = aws_instance.web_server.id
}