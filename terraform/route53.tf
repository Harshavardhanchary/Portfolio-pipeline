resource "aws_route53_zone" "route53_zone" {
    name = "harshavardhan.space"
}

resource "aws_route53_record" "viewer_certificate" {
    zone_id = aws_route53_zone.route53_zone.zone_id
    name    = "harshavardhan.space"
    type    = "A"

    alias {
        name                   = aws_cloudfront_distribution.portfolio_cdn.domain_name
        zone_id                = aws_cloudfront_distribution.portfolio_cdn.hosted_zone_id
        evaluate_target_health = false
    }
}
