variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

#variable "private-2a" {
#  default = "subnet-05aaae3f81d9f42b3"
#}

#variable "private-2c" {
#  default = "subnet-0028d8357bd59b6f9"
#}

variable "sn-private-2a" {
  default = "SN-private-2a-DB"
}

variable "sn-private-2c" {
  default = "SN-private-2c-DB"
}

variable "rds-family" {
  default = "mysql5.5"
}

variable "rds-time_zone" {
  default = "Asia/Seoul"
}

variable "sg-name" {
  default = "SG-awx-private-db"
}
