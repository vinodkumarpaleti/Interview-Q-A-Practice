provider "aws" {
    region = "us-east-1"
}

# Create a VPC
 resource "aws_vpc" "my_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
      Name = "my_vpc"
    }
 }

 # Create public subnet

resource "aws_subnet" "my_public_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "My-public-subnet"
  }
}

# Create Private subnet
resource "aws_subnet" "my_private_subnet" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "My-private-subnet"
  }
}

# Craete Internet Gateway

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "My-Internet-Gateway"
  }
}

# Create route table for public subnet

resource "aws_route_table" "my_public_rbt" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = "0.0.0.0"
    gateway_id = aws_internet_gateway.my_igw.id
  }
  tags = {
    Name = "My-Public-Route-Table"
  }
}

# Associate public route table with public subnet

resource "aws_route_table_association" "public_route_table_association" {
  subnet_id = aws_subnet.my_public_subnet.id
  route_table_id = aws_route_table.my_public_rbt.id
}

# Output VPC ID

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}