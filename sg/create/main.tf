data "aws_vpc" "default" {
 default = true
}

resource "aws_security_group" "web_server_sg_tf" {
 name        = "default-web-sg"
 description = "Allow HTTPS/HTTP to web server"
 vpc_id      = data.aws_vpc.default.id

ingress {
   description = "HTTPS ingress"
   from_port   = 443
   to_port     = 443
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
}

ingress {
   description = "HTTP ingress"
   from_port   = 80
   to_port     = 80
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
}

ingress {
   description = "SSH"
   from_port   = 22
   to_port     = 22
   protocol    = "tcp"
   cidr_blocks = ["14.248.83.124/32"]
}

ingress {
   description = "SSH"
   from_port   = 22
   to_port     = 22
   protocol    = "tcp"
   cidr_blocks = ["14.248.82.228/32"]
}

egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}