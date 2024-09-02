resource "aws_vpc" "my_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
        Name = "Dev-VPC"
    }
}
resource "aws_subnet" "my_public_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "Public Subnet"
    }
}

resource "aws_subnet" "my_private_subnet" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "Private Subnet"
      
    }
  
}
resource "aws_internet_gateway" "my_igw" {
    vpc_id = aws_vpc.my_vpc.id
    tags = {
        Name = "Sample Gateway"
    }  
  
}
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id
  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
    tags = {
        Name = "Sample route table"
    }
  }
}