variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "vpc-tagname" {
  description = "VPC ID"
  type        = string
  default     = "VPC-awx"
}

variable "awx-shop-dns-name" {
  description = "awx.kr DNS name"
  #description = "awx.co.kr DNS name"
  type        = string
  #default     = "awx.kr"
  default     = "awx.co.kr"
}

variable "s3-alb-accesslog" {
  description = "S3 bucket for ALB access_log"
  type        = string
  default     = "s3-bucket-awx"
}

variable "alb-awx-web" {
  description = "ALB AWX WEB name"
  type        = string
  default     = "ALB-awx-WEB"
}

variable "alb-awx-was" {
  description = "ALB AWX WAS name"
  type        = string
  default     = "ALB-awx-WAS"
}

variable "sn-public-2a-webelb" {
  description = "Public Subnet-2a WEBELB"
  type        = string
  default     = "SN-public-2a-WEBELB"
}

variable "sn-private-2a-waselb" {
  description = "Private Subnet-2a WASELB"
  type        = string
  default     = "SN-private-2a-WASELB"
}

variable "sn-public-2c-webelb" {
  description = "Public Subnet-2c WEBELB"
  type        = string
  default     = "SN-public-2c-WEBELB"
}

variable "sn-private-2c-waselb" {
  description = "Private Subnet-2c WASELB"
  type        = string
  default     = "SN-private-2c-WASELB"
}

variable "sg-awx-public-webelb" {
  description = "Security Group for WEB ALB"
  type        = string
  default     = "SG-awx-public-webelb"
}

variable "sg-awx-private-waselb" {
  description = "Security Group for WAS ALB"
  type        = string
  default     = "SG-awx-private-waselb"
}

variable "TGS-awx-WEB" {
  description = "TAG : Load Balancer Target Group Name for WEB"
  type        = string
  default     = "LB-TGS-awx-WEB"
  #default     = "allnew-LB-TGS-awx-WEB"
  #default     = ""
}

variable "TGS-awx-WAS" {
  description = "TAG : Load Balancer Target Group Name for WEB"
  type        = string
  default     = "LB-TGS-awx-WAS"
  #default     = "allnew-LB-TGS-awx-WAS"
  #default     = ""
}
