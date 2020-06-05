resource "aws_route53_zone" "r53-awx-dev" {
  name          = var.public_domain_name
  comment       = "${var.public_domain_name} E-commerce shop"
  force_destroy = true

  tags = {
    Name = var.public_domain_name
  }
}

#resource "aws_route53_recored" "awx-www" {
#  zone_id = aws_route53_zone.r53-awx-dev.id
#  name    = "" 
#  type    = "A"
#  ttl     = "60"
#  #records = aws_eip.
#}
