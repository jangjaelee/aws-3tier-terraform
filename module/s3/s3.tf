resource "aws_s3_bucket" "s3-bucket-awx" {
  bucket = var.s3-bucket
  region = var.region
  acl    = "private"
  
  tags = {
    Name = var.s3-bucket
  }
}
