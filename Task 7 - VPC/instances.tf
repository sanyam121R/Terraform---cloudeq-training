
resource "aws_instance" "ec2_servers" {
  for_each      = var.common_tags
  ami           = var.ec2_servers_ami
  instance_type = var.instance_type

  security_groups = aws_security_group.webservers.id
  subnet_id = "${element(aws_subnet.public.*.id,count.index)}"
  user_data = "${file("install_httpd.sh")}"

  tags = {
    Name    = each.key
    Owner   = each.value["owner"]
    Purpose = each.value["purpose"]
  }
}
