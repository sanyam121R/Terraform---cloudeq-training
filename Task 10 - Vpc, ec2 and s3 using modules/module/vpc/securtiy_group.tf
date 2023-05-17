
resource "aws_security_group" "sanyam-security-group-vpc" {
  name        = "san-security-group"
  description = "security group"
  vpc_id      = aws_vpc.vpc.id

  dynamic "ingress" {
    for_each = [443, 80]
    iterator = port
    content {
      description      = "TLS from VPC"
      from_port        = port.value
      to_port          = port.value
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "Name"    = "sanyam_security_group"
    "Owner"   = "sanyam.rathore@cloudeq.com"
    "Purpose" = "training"
  }
}