# provider.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {

region = "us-east-1"

 }


# VPC
resource "aws_vpc" "my-vpc" {
  cidr_block       = "10.0.0.0/16"
  
  tags = {
    Name = "TerraWeek-VPC"
  }
}

#aws_subnet
resource "aws_subnet" "my-subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "TerraWeek-Public-Subnet"
  }
}

# Internet gateway
resource "aws_internet_gateway" "my-gw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "TerraWeek-Internet-Gateway"
  }
}

# aws_route_table
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-gw.id
  }
}

# aws_route_table_association
resource "aws_route_table_association" "my-route-table-association" {
  subnet_id      = aws_subnet.my-subnet.id
  route_table_id = aws_route_table.my_route_table.id
}

# Security Group
resource "aws_security_group" "my-sg" {
  name        = "TerraWeek-SG"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.my-vpc.id

  tags = {
    Name = "TerraWeek-SG"
  }
}

# Ingress rule for ssh
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.my-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

# Ingress rule for http
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.my-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

# Egress rule 
resource "aws_vpc_security_group_egress_rule" "allow_traffic" {
  security_group_id = aws_security_group.my-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

# EC2 instance 
resource "aws_instance" "my-instance" {
  ami           = "ami-0ec10929233384c7f"
  instance_type = "t3.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.my-subnet.id
  vpc_security_group_ids = [aws_security_group.my-sg.id] 

 tags = {
    Name = "TerraWeek-Server"
  }
}

# S3 bucket
resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-tf-test-bucket"
  depends_on = [aws_instance.my-instance]

  tags = {
    Name        = "My s3 bucket"
    
  }
}
