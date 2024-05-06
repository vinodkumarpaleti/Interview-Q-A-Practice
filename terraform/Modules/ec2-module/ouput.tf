output "instance_id" {
    description = "ID of EC2"
    value = aws_instance.my-ec2.ID
}