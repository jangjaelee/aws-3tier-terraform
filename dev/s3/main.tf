provider "aws" {
  region = var.region  
}

module "s3_bucket" {
  source = "../../module/s3"

  region = var.region
  s3-bucket = var.s3-bucket
}
