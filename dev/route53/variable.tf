variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "public_domain_name" {
  description = "public shop domain_name"
  type        = string
  default     = "awx.co.kr"
}

variable "private_domain_name" {
  description = "private shop domain_name"
  type        = string
  default     = "awx.internal"
}

variable "vpc-tagname" {
  description = "tag:Name of VPC-awx"
  type        = string
  default     = "VPC-awx"
}
