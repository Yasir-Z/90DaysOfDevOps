#instance_region
variable "instance_region" {
  type        = string
  description = "EC2 instance type for region"
  default     = "us-east-1a"
}

#VPC_cidr
variable "vpc_cidr" {
  type        = string
  description = "This is for vpc cidr"
  default     = "10.0.0.0/16"
}

#subnet_cidr
variable "subnet_cidr" {
  type        = string
  description = "This is for subnet cidr"
  default     = "10.0.1.0/24"
}

#instance_type
variable "instance_type" {
  type        = string
  description = "This is for instance type"
  default     = "t3.micro"
}

#environment
variable "environment" {
  type        = string
  description = "This is for environment type"
  default     = "dev"
}

#project_name
variable "project_name"{
  type = string
}
