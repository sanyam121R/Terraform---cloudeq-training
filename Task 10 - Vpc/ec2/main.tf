
resource "aws_instance" "sm_ec2" {
    ami = var.ami
    instance_type = var.inst_type
    tags = var.tags
    security_groups = var.security_groups
    count = var.cnt_inst

    volume_tags = var.vol_tags
    subnet_id = var.subnet_id
}