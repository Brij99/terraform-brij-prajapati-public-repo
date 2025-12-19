variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI for ap-south-1"
  default     = "ami-0f5ee92e2d63afc18"
}

variable "key_name" {
  description = "EC2 Key Pair Name"
  default     = "my-key"
}

variable "allowed_ports" {
  type    = list(number)
  default = [22, 80, 443]
}
