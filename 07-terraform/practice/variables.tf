variable "instance_type" {
  type = string
}

variable "instance_ami" {
  type = string
}

variable "vpc_cidr" {
  description = "CIDR for the vpc"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR for the subnet"
  type        = string
}

variable "route_cidr" {
  description = "CIDR for the route table"
  type        = string
}

output "EC2_ID" {
  description = "The ID of the EC2 Instance"
  value       = aws_instance.practice-ec2-tf.id
}
