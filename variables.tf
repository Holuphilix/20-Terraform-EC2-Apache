#================= EC2 Instance Inputs =================#

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID for the EC2 instance (usually provided by the SG module)"
  type        = string
  default     = null # Will be dynamically set via module output
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

#================= Security Group Inputs =================#

variable "vpc_id" {
  description = "The ID of the VPC where the Security Group will be created"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the instance"
  type        = string
  default     = "0.0.0.0/0"
}

variable "vpc_name" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "availability_zone" {}
