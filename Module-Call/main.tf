module "my_module" {
    source = "../Module"
    ami = "ami-id"
    instance_type = t2.micro
}