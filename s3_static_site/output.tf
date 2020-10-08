output "url" {
  value = "${aws_s3_bucket.website_bucket.bucket}.s3-website-${var.region}.amazonaws.com"
}

output "nameservers" {
  value = aws_route53_zone.primary.name_servers
}

