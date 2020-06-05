variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "key-pair" {
  description = "Key paris for EC2 instances"
  type        = string
  default     = "Keypair-awx"
}

variable "ami-owner" {
  description = "AMI Owner of web-ami"
  type        = string
  default     = "374456436099"
}

variable "AMI-name-WEB" {
  description = "WEB AMI Name"
  type        = string
  default     = "AMI-EC2-WEB_2020-06-05_0419"
}

variable "AMI-name-WAS" {
  description = "WAS AMI Name"
  type        = string
  default     = "AMI-EC2-WAS_2020-06-05_0424"
}

variable "web-instance-type" {
  description = "Web Launch Configuration Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "was-instance-type" {
  description = "WAS Launch Configuration Instance Type"
  type        = string
  default     = "t2.micro"
}

##-> requirement value change to create new ASG
variable "lc-awx-web" {
  description = "web launch configuration"
  type        = string
  default     = "lc-awx-web"
}

##-> requirement value change to create new ASG
variable "lc-awx-was" {
  description = "was launch configuration"
  type        = string
  default     = "lc-awx-was"
}

variable "lc-awx-web-vsize" {
  description = "web volume size"
  type        = number
  default     = 10
}

variable "lc-awx-was-vsize" {
  description = "was volume size"
  type        = number
  default     = 30
}

variable "lc-awx-web-vtype" {
  description = "web volume type"
  type        = string
  default     = "gp2"
}

variable "lc-awx-was-vtype" {
  description = "was volume type"
  type        = string
  default     = "gp2"
}

variable "sg-awx-private-web" {
  description = "SG-awx-private-web"
  type        = string
  default     = "SG-awx-private-web"
}

variable "sg-awx-private-was" {
  description = "SG-awx-private-was"
  type        = string
  default     = "SG-awx-private-was"
}
