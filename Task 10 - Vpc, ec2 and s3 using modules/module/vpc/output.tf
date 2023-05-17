output "vpc_id" {
  value = aws_vpc.vpc.id
}


output "security_groups" {
  value = ["${aws_security_group.sanyam-security-group-vpc.id}"]
}

output "pub_subnets" {
    value = aws_subnet.public_subnets
}

output "prv_subnets" {
    value = aws_subnet.private_subnets
}