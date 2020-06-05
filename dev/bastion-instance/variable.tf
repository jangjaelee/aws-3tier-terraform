variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "ami-id" {
  description = "AMI - Amazon Linux 2"
  type        = string
  default     = "ami-01af223aa7f274198"
}

variable "instance-type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "bastion-nic" {
  description = "EC2 Bastion NIC tag name"
  type        = string
  default     = "NIC-eth0-awx-bastion"
}

variable "key-pair" {
  description = "Key paris for EC2 instances"
  type        = string
  default     = "Keypair-awx"
}
