variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "vpc_cidr" {
  description = "default VPC Private IP range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "internet-nat-gw" {
  description = "default Internet Gateway"
  type        = string
  default     = "0.0.0.0/0"
}

variable "sg_inbound-any" {
  description = "Security Group Inbound IP Range - Any"
  type        = string
  default     = "0.0.0.0/0"
}

variable "sg_outbound-any" {
  description = "Security Group Outbound IP Range - Any"
  type        = string
  default     = "0.0.0.0/0"
}

variable "office_IP" {
  description = "Office IP Address"
  type        = string
  default     = "13.209.172.51/32"
}
