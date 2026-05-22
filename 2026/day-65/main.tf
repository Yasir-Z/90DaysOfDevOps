#========main.tf============== 
#locals
locals {
  common_tags = {
    Environment = "dev"
    Project     = "terraweek"
    ManagedBy   = "Terraform"
  }
}

#data_block
# Get latest Ubuntu 22.04 AMI
data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# 1. Pehle Network (VPC) Banayein
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "terraweek-vpc"
  }
}

# 2. Phir Subnet Banayein
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "terraweek-public-subnet"
  }
}

# 3. Ab Security Group Module ko Call Karein
module "web_sg" {
  source        = "./modules/security-group"
  vpc_id        = aws_vpc.main.id
  sg_name       = "terraweek-web-sg"
  ingress_ports = [22, 80, 443]
  tags          = local.common_tags
}

# 4. End mein EC2 Module ko Call Karein (Fix: Arguments ab iske andar hain)
module "web_server" {
  source             = "./modules/ec2-instance"
  ami_id             = data.aws_ami.ubuntu.id
  instance_type      = "t3.micro"
  instance_name      = "Terraweek-Web-Server"
  tags               = local.common_tags
  subnet_id          = aws_subnet.public_subnet.id
  security_group_ids = [module.web_sg.security_group_id]
}

# 5. Api Server Module Call
module "api_server" {
  source             = "./modules/ec2-instance"
  ami_id             = data.aws_ami.ubuntu.id
  instance_type      = "t3.micro"
  subnet_id          = aws_subnet.public_subnet.id       # Isko bhi sahi wale subnet se map kiya
  security_group_ids = [module.web_sg.security_group_id] # Sahi output name use kiya
  instance_name      = "terraweek-api"
  tags               = local.common_tags
}
