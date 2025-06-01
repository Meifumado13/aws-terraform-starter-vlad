variable "region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-2"  # ✅ updated from us-east-1
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0b8b44ec9a8f90422"
}


