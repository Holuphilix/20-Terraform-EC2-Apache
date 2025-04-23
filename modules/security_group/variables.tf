variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to access via SSH"
  type        = string
}
