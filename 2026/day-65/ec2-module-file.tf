#=====main.tf===========
#instance_resource
resource aws_instance terra-server {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  vpc_security_group_ids = var.security_group_ids  

  tags = {
    Name = var.instance_name
  }
}

#================variables.tf=============== 
#ami_id
variable "ami_id" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

#Instance_type
variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t3.micro"
}

#subnet_id
variable "subnet_id" {
  type        = string
  description = "This holds subnet_id"
}

#Security_group_id
#subnet_id
variable "security_group_ids" {
  type        = list(string)
  description = "This holds security group"
}

#instance_type
variable "instance_name" {
  type        = string
  description = "EC2 instance name for the web server"
}

#tags
variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of additional tags to assign to the resource"
}

#==================outputs.tf====================

#instance_id
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.terra-server.id
}

#public_ip
output "instance_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.terra-server.public_ip
}

output "public_ip" {
  value = aws_instance.terra-server.public_ip
}

