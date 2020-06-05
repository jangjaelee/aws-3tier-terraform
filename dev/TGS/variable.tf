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

variable "lb-tgs-awx-web" {
  description = "TAG : Balancer Target Group name for AWX-WEB"
  type        = string
  default     = "LB-TGS-awx-WEB"
}

variable "lb-tgs-awx-was" {
  description = "TAG : Loar Balancer Target Group name for AWX-WAS"
  type        = string
  default     = "LB-TGS-awx-WAS"
}
