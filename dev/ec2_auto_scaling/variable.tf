variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "lc-awx-web" {
  description = "Web Launch Configuration"
  type        = string
  default     = "lc-awx-web"
}

variable "lc-awx-was" {
  description = "WAS Launch Configuration"
  type        = string
  default     = "lc-awx-was"
}

variable "sn-private-2a-web" {
  description = "Subnet private-2a WEB"
  type        = string
  default     = "SN-private-2a-WEB"
}

variable "sn-private-2c-web" {
  description = "Subnet private-2c WEB"
  type        = string
  default     = "SN-private-2c-WEB"
}

variable "sn-private-2a-was" {
  description = "Subnet private-2a WAS"
  type        = string
  default     = "SN-private-2a-WAS"
}

variable "sn-private-2c-was" {
  description = "Subnet private-2c WAS"
  type        = string
  default     = "SN-private-2c-WAS"
}

variable "lb-tgs-awx-web" {
  description = "Load Balancr Target Groups-awx-WEB"
  type        = string
  default     = "LB-TGS-awx-WEB"
}

variable "lb-tgs-awx-was" {
  description = "Load Balancr Target Groups-awx-WAS"
  type        = string
  default     = "LB-TGS-awx-WAS"
}

variable "asg-awx-web-instance-min" {
  description = "WEB - Auto Scaling Instance minimum size"
  type        = number
  default     = 2
}

variable "asg-awx-web-instance-max" {
  description = "WEB - Auto Scaling Instance maximum size"
  type        = number
  default     = 4
}

variable "asg-awx-was-instance-min" {
  description = "WAS - Auto Scaling Instance minimum size"
  type        = number
  default     = 2
}

variable "asg-awx-was-instance-max" {
  description = "WAS - Auto Scaling Instance maximum size"
  type        = number
  default     = 4
}

variable "name-asg-awx-web" {
  description = "Auto Scaling Name of AWX WEB"
  type        = string
  default     = "ASG-awx-WEB"
}

variable "name-asg-awx-was" {
  description = "Auto Scaling Name of AWX WAS"
  type        = string
  default     = "ASG-awx-WAS"
}
