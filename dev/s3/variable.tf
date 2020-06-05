variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-northeast-2"
}

variable "s3-bucket" {
  description = "AWS S3 Bucket"
  type        = string
  default     = "s3-bucket-awx"
}
