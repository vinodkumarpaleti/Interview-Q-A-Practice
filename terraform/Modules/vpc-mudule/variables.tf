variable "vpc_name" {
  description = "Name of the VPC"
  type = string
}
variable "cidr_block" {
  description = "VPC CIDR"
  type = string
}
variable "subnet_cidr" {
  description = "subnet cidr block"
  type = list(string)
}
variable "availability_zones" {
  description = "list of availability zones for subnets"
  type = list(string)
}
variable "public subnet" {
  description = "public subnet"
  type = true
}
