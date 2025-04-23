# Security Group Module
module "security_group" {
  source             = "./modules/security_group"
  vpc_id             = module.vpc.vpc_id             # ✅ Refer to created VPC ID
  allowed_ssh_cidr   = var.allowed_ssh_cidr
}

module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = "apache2-vpc"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  availability_zone    = "us-east-1a" # adjust to your region
}

# EC2 Instance Module
module "ec2" {
  source          = "./modules/ec2"
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  subnet_id       = var.subnet_id
  security_group_id = module.security_group.security_group_id
  instance_name   = var.instance_name
}
