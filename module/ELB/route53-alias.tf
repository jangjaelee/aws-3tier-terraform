resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.awx-shop.zone_id
  name    = "www"
  type    = "A"

  alias {
    name = aws_lb.ALB-awx-WEB.dns_name
    zone_id = aws_lb.ALB-awx-WEB.zone_id

    evaluate_target_health = true
  }

  #lifecycle {
  #  create_before_destroy = true
  #}
}

resource "aws_route53_record" "blank" {
  zone_id = data.aws_route53_zone.awx-shop.zone_id
  name    = ""
  type    = "A"

  alias {
    name = aws_lb.ALB-awx-WEB.dns_name
    zone_id = aws_lb.ALB-awx-WEB.zone_id

    evaluate_target_health = true
  }
}
