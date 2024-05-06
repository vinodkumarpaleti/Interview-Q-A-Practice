#This module is calling from '/terraform/Modules' directory
module "my-module" {
    source = "../terraform/Modules"
    ami = amixxxxx
    instance_type = t2.micro
}

