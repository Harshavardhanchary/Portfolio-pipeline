provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "harshavardhan-portfolio" {
  bucket = "harshavardhan.space"

}

resource "aws_s3_bucket_public_access_block" "name" {
  bucket = aws_s3_bucket.harshavardhan-portfolio.id

  block_public_acls       = false
  ignore_public_acls      = false
  block_public_policy     = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "name" {
  bucket = aws_s3_bucket.harshavardhan-portfolio.id

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_object" "index_html" {
  bucket       = aws_s3_bucket.harshavardhan-portfolio.id
  key          = "index.html"                
  source       = "../index.html"                
  content_type = "text/html"                   
}

resource "aws_s3_bucket_policy" "portfolio_policy" {
  bucket = aws_s3_bucket.harshavardhan-portfolio.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "AllowCloudFrontServicePrincipalReadOnly"
        Effect    = "Allow"
        Principal = {
          Service = "cloudfront.amazonaws.com"
        }
        Action   = "s3:GetObject"
        Resource = "${aws_s3_bucket.harshavardhan-portfolio.arn}/*"
        Condition = {
          StringEquals = {
            "AWS:SourceArn" = aws_cloudfront_distribution.portfolio_cdn.arn
          }
        }
      }
    ]
  })
}

