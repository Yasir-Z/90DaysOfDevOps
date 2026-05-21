#Local_block
locals {
  name_prefix = "${var.project_name}-${var.environment}"
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

#VPC
resource "aws_vpc" "my_vpc" {
  cidr_block       = var.vpc_cidr
  

  tags = {
    Name = "${local.name_prefix}-vpc"
  }
}

#aws_subnet
resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "${local.name_prefix}-subnet"
  }
}

#internet_gateway
resource "aws_internet_gateway" "my_gw" {
  vpc_id = aws_vpc.my_vpc.id

    tags = {
    Name = "Terra_ig"
  }
}


#Route_table
resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_gw.id
  }
}

#route_table
resource "aws_route_table_association" "my_route_table" {
  subnet_id      = aws_subnet.my_subnet.id
  route_table_id = aws_route_table.my_route_table.id
}

#AWS_security_group
resource "aws_security_group" "my_sg" {
  name        = "my_terra_sg"
  description = "This is terraform sec-group"
  vpc_id      = aws_vpc.my_vpc.id

  tags = {
    Name = "TerraWeek SG"
  }
}


#data_block
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] 
}

#availablitiy zone
data "aws_availability_zones" "available" {
  state = "available"
}


#AWS_Instance
resource "aws_instance" "my_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  associate_public_ip_address = true
    
  subnet_id              = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  
  
  tags = {
    Name = "${local.name_prefix}-server"
    Environment = var.environment
  }
}
