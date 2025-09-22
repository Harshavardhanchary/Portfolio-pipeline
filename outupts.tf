output "route53_ns" {
    value = aws_route53_zone.route53_zone.name_servers
    description = "Route53 nameservers"
}

output "name" {
    value = aws_s3_bucket.harshavardhan-portfolio.bucket
    description = "S3 bucket name"
}
