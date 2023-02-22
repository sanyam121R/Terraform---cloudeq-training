
resource "aws_instance" "sm_ec2" {
    ami = var.ami_id
    instance_type = var.inst_type
    tags = var.tag_name

    volume_tags = {
        Name = "sanyam"
        Owner : "sanyam.rathore@cloudeq.com"
        Purpose : "training"
        availability_zone = "ap-south-1a"
        size              = 20
    }

}
