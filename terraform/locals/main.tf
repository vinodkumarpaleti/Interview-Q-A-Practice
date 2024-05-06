resource "aws_instance" "my-instance" {
    ami = local.ami_id
    instance_type = local.instance_type
    tags = {
       Name = local.instance_name
    }
  }